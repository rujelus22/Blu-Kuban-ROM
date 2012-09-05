.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;,
        Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;
    }
.end annotation


# static fields
.field private static customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

.field private static mAccountId:J

.field public static mActivity:Ljava/lang/Object;

.field private static mIsCombined:Z

.field private static mMailProvider:Ljava/lang/String;

.field public static mNextButtonInhibit:Z

.field private static mSncEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static sso_fromIM:Z


# instance fields
.field private final ACTION_CREATE_ACCOUNT:Ljava/lang/String;

.field private final ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

.field private final ACTION_CREATE_ACCOUNT_EAS:Ljava/lang/String;

.field private final ACTION_CREATE_ACCOUNT_IM_SSO:Ljava/lang/String;

.field private final DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

.field private final EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String;

.field private final MAIL_PROVIDER_AOL:Ljava/lang/String;

.field private final MAIL_PROVIDER_GMAIL:Ljava/lang/String;

.field private final MAIL_PROVIDER_VERIZON:Ljava/lang/String;

.field private final MAIL_PROVIDER_WINDOWS_LIVE:Ljava/lang/String;

.field private final MAIL_PROVIDER_YAHOO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCanceled:Z

.field private mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDuplicateAccountDialog:Landroid/app/AlertDialog;

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mEasFlowMode:Z

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

.field private mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mOwnerLookupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerLookupTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mPaused:Z

.field private mPhaseCheckDialog:Landroid/app/AlertDialog;

.field private mPremiumView:Landroid/widget/CheckBox;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private mReportAccountAuthenticatorError:Z

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSncProgressDialog:Landroid/app/ProgressDialog;

.field private mTest:Landroid/widget/TextView;

.field private mWelcomeView:Landroid/widget/TextView;

.field private mpremiumString:Landroid/widget/TextView;

.field salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 360
    sget-object v0, Lcom/android/email/activity/Welcome;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    .line 362
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 173
    const-string v0, "AccountSetupBasics"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TAG:Ljava/lang/String;

    .line 180
    const-string v0, "@aol.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_AOL:Ljava/lang/String;

    .line 182
    const-string v0, "@gmail.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_GMAIL:Ljava/lang/String;

    .line 184
    const-string v0, "@verizon.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_VERIZON:Ljava/lang/String;

    .line 186
    const-string v0, "@hotmail.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_WINDOWS_LIVE:Ljava/lang/String;

    .line 188
    const-string v0, "@yahoo.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_YAHOO:Ljava/lang/String;

    .line 196
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT:Ljava/lang/String;

    .line 198
    const-string v0, "com.android.email.CREATE_ACCOUNT_EAS"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT_EAS:Ljava/lang/String;

    .line 200
    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT_IM_SSO:Ljava/lang/String;

    .line 202
    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

    .line 204
    const-string v0, "EMAIL"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String;

    .line 206
    const-string v0, "USER"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String;

    .line 208
    const-string v0, "INCOMING"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String;

    .line 210
    const-string v0, "OUTGOING"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    .line 272
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 275
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountDialog:Landroid/app/AlertDialog;

    .line 278
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPhaseCheckDialog:Landroid/app/AlertDialog;

    .line 280
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    .line 326
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 344
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    .line 363
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    .line 1211
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    .line 1513
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$5;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 2465
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/os/Bundle;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupBasics;->addUserAccountResponse(Landroid/os/Bundle;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupBasics;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .registers 4
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 476
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Landroid/app/Activity;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method public static actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 452
    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    sget v1, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 468
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 471
    :goto_10
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void

    .line 470
    :cond_19
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    goto :goto_10
.end method

.method public static actionAccountCreateFinishedFromSetting(Landroid/app/Activity;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 500
    .line 503
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 515
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 518
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 520
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 385
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 386
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    :goto_13
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 393
    return-void

    .line 389
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_13
.end method

.method public static actionRestoreExchangeAccount(Landroid/app/Activity;)V
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    const-string v1, "Corporate"

    .line 399
    const-string v2, "MAIL_PROVIDER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "SncRestoreFlow"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 402
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 403
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 411
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 414
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    const-string v1, "MAIL_PROVIDER"

    const-string v2, "Corporate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :goto_1d
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    return-object v0

    .line 419
    :cond_23
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1d
.end method

.method public static actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 434
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    .line 435
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    return-object v0
.end method

.method private addUserAccountResponse(Landroid/os/Bundle;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2479
    const-string v0, "AccountSetupBasics"

    const-string v1, "addUserAccountResponse"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2481
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mCanceled:Z

    if-ne v0, v5, :cond_17

    .line 2482
    const-string v0, "AccountSetupBasics"

    const-string v1, "User Already Canceled"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    :cond_16
    :goto_16
    return-void

    .line 2485
    :cond_17
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_23

    .line 2486
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    .line 2489
    :cond_23
    if-eqz p1, :cond_16

    .line 2490
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2491
    const-string v1, "status_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2492
    const-string v2, "AccountSetupBasics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserAccountResponse - resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    if-nez v0, :cond_5c

    .line 2495
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->actionSetNames(Landroid/app/Activity;)V

    .line 2496
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_16

    .line 2498
    :cond_5c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2499
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2500
    const v2, 0x7f080594

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2501
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2502
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2503
    const-string v1, "Ok"

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$10;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_16
.end method

.method private createProgressDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2515
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    .line 2516
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080595

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2517
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2518
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2519
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2520
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupBasics$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$11;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2528
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2529
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mCanceled:Z

    .line 2530
    const-string v0, "AccountSetupBasics"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    return-void
.end method

.method private finishAutoSetup()V
    .registers 10

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1534
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1535
    const-string v0, "@"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1536
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 1537
    const/4 v3, 0x1

    aget-object v5, v0, v3

    .line 1539
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1540
    if-nez v0, :cond_32

    .line 1541
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1542
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1546
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v3, v3, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 1547
    const-string v4, "\\$email"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1548
    const-string v4, "\\$user"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1549
    const-string v4, "\\$domain"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1551
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 1552
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v3, v4, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 1556
    const-string v8, "\\$email"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1557
    const-string v8, "\\$user"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1558
    const-string v7, "\\$domain"

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1560
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1561
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1562
    if-eqz v2, :cond_81

    if-eqz v2, :cond_a3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a3

    .line 1564
    :cond_81
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :goto_86
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v6, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1574
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1588
    :goto_a2
    return-void

    .line 1566
    :cond_a3
    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/net/URISyntaxException; {:try_start_32 .. :try_end_a6} :catch_a7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_32 .. :try_end_a6} :catch_a9

    goto :goto_86

    .line 1575
    :catch_a7
    move-exception v0

    goto :goto_a2

    .line 1585
    :catch_a9
    move-exception v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_a2
.end method

.method private forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1937
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1939
    if-nez v0, :cond_e

    .line 1940
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1941
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1945
    :cond_e
    :try_start_e
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 1946
    invoke-static {v1, p3}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1949
    invoke-static {v0, p4}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1951
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_20
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_20} :catch_21

    .line 1958
    :goto_20
    return-void

    .line 1952
    :catch_21
    move-exception v0

    .line 1955
    const v0, 0x7f0800cf

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1497
    const/4 v1, 0x0

    .line 1500
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_d} :catch_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_d} :catch_14

    .line 1507
    :goto_d
    return-object v0

    .line 1501
    :catch_e
    move-exception v0

    move-object v0, v1

    .line 1505
    goto :goto_d

    .line 1502
    :catch_11
    move-exception v0

    move-object v0, v1

    .line 1505
    goto :goto_d

    .line 1503
    :catch_14
    move-exception v0

    .line 1504
    const-string v0, "Email"

    const-string v2, "getOwnerName(): TimeoutException, cannot get sender name"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_d
.end method

.method private getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSncMailProvider(Ljava/lang/String;)Z
    .registers 5
    .parameter "provider"

    .prologue
    const/4 v0, 0x1

    .line 2535
    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@gmail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_29

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@aol.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_29

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@hotmail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_29

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@yahoo.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2a

    .line 2540
    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private onEnableProceedButtons(ZZ)V
    .registers 4
    .parameter "manualValid"
    .parameter "nextValid"

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 2173
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2174
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2176
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_22

    .line 2177
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2178
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2179
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2182
    :cond_22
    return-void
.end method

.method private onExchange(Z)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x2

    .line 2545
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2549
    :try_start_7
    new-instance v4, Ljava/net/URI;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2550
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+"

    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 2553
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_3a} :catch_72

    .line 2566
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 2567
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 2568
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 2581
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    const/16 v5, 0x3c

    const/4 v6, 0x0

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 2624
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 2626
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 2631
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZ)V

    .line 2633
    :goto_71
    return-void

    .line 2554
    :catch_72
    move-exception v0

    .line 2560
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080565

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_71
.end method

.method private onManualSetup(Z)V
    .registers 12
    .parameter

    .prologue
    const v5, 0x1020002

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1849
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1850
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1851
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1852
    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1853
    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1855
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1856
    array-length v0, v0

    if-le v0, v8, :cond_44

    .line 1858
    const v0, 0x7f0800cf

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1923
    :goto_43
    return-void

    .line 1866
    :cond_44
    const-string v0, "d@d.d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1867
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1870
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1871
    if-eqz v1, :cond_77

    .line 1872
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1873
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1875
    :cond_77
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1876
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1877
    :cond_82
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1878
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1879
    new-instance v1, Lcom/android/email/activity/setup/DebugFragment;

    invoke-direct {v1}, Lcom/android/email/activity/setup/DebugFragment;-><init>()V

    .line 1880
    invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1881
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_43

    .line 1884
    :cond_96
    const-string v0, "v@v.v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1885
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V

    goto :goto_43

    .line 1889
    :cond_ab
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1891
    if-nez v0, :cond_b9

    .line 1892
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1893
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1896
    :cond_b9
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1898
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    .line 1899
    invoke-virtual {v5, v3, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const-string v6, "placeholder"

    invoke-virtual {v5, v6, v4, v9, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1902
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1903
    invoke-virtual {v0, v3, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v2, "placeholder"

    invoke-virtual {v0, v2, v4, v9, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1906
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1908
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAllowAutodiscover(Z)V

    .line 1911
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_102

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-eqz v0, :cond_102

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v8, :cond_102

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onExchange(Z)V

    goto/16 :goto_43

    .line 1918
    :cond_102
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;)V

    goto/16 :goto_43
.end method

.method private onNext()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1669
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v6, :cond_19f

    .line 1670
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1671
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1672
    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1673
    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1674
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1677
    sget v4, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_141

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->isSncMailProvider(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_141

    .line 1682
    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->findDuplicateAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    .line 1683
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 1684
    const-string v0, "AccountSetupBasics"

    const-string v1, "Duplicate Account !!!!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1686
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1687
    const v1, 0x7f080594

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1688
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1689
    const v1, 0x7f0800d1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1691
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$6;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1697
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1698
    sput-boolean v7, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1838
    :cond_84
    :goto_84
    return-void

    .line 1703
    :cond_85
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->createProgressDialog()V

    .line 1705
    invoke-static {v7}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 1707
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 1708
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 1709
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setMailProvider(Ljava/lang/String;)V

    .line 1711
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getSncEndpointList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncEndpointList:Ljava/util/List;

    .line 1713
    const/4 v0, 0x5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 1716
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getProviderServiceList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c8

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    new-instance v3, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v3}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 1719
    const-string v4, "Mail"

    invoke-virtual {v3, v4}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 1720
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 1721
    const-string v4, "N"

    invoke-virtual {v3, v4}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 1722
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1723
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setProviderServiceList(Ljava/util/List;)V

    .line 1726
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getSncProviderString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f6

    .line 1729
    const-string v2, "gmail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f1

    const-string v2, "google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 1730
    :cond_f1
    const-string v0, "Google"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    .line 1740
    :cond_f6
    :goto_f6
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getSncProviderString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getProviderServiceList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_84

    .line 1731
    :cond_10f
    const-string v2, "aol"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11f

    const-string v2, "aim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 1732
    :cond_11f
    const-string v0, "AOL"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    goto :goto_f6

    .line 1733
    :cond_125
    const-string v2, "yahoo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 1734
    const-string v0, "Yahoo"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    goto :goto_f6

    .line 1735
    :cond_133
    const-string v2, "hotmail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1736
    const-string v0, "MSN"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    goto :goto_f6

    .line 1800
    :cond_141
    invoke-static {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderCustomer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 1804
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-nez v0, :cond_177

    .line 1806
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_165

    .line 1807
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_165

    .line 1809
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 1810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 1814
    :cond_165
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 1815
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_84

    .line 1820
    :cond_177
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_19b

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v0, :cond_19b

    .line 1821
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    move-result-object v0

    .line 1823
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NoteDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1827
    :goto_192
    sget-boolean v0, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    if-nez v0, :cond_84

    .line 1828
    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto/16 :goto_84

    .line 1825
    :cond_19b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_192

    .line 1833
    :cond_19f
    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto/16 :goto_84
.end method

.method private onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .registers 5
    .parameter

    .prologue
    .line 2138
    const-string v0, "email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2141
    if-eqz p1, :cond_22

    .line 2142
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 2143
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 2147
    :cond_22
    return-void
.end method

.method private onSetupForPremiumAccount()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2354
    .line 2356
    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_6a

    move-result v0

    .line 2361
    :goto_c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2362
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2365
    if-ne v0, v4, :cond_76

    .line 2366
    invoke-static {}, Lcom/seven/Z7/app/SubscriptionStatus;->isApplicationUsageDisclaimerAccepted()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2367
    invoke-static {v4}, Lcom/seven/Z7/app/SubscriptionStatus;->setApplicationUsageDisclaimerAccepted(Z)V

    .line 2381
    :cond_33
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2382
    if-nez v0, :cond_41

    .line 2383
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 2384
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2386
    :cond_41
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 2389
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 2390
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 2395
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p0, v2, v3, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->actionNewAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2397
    :goto_69
    return-void

    .line 2357
    :catch_6a
    move-exception v0

    .line 2358
    const-string v2, "AccountSetupBasics"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_c

    .line 2371
    :cond_76
    invoke-static {}, Lcom/seven/Z7/app/SubscriptionStatus;->isApplicationUsageDisclaimerAccepted()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2372
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2373
    if-eqz v0, :cond_97

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 2374
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2376
    :cond_97
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->actionNewAccountPremium(Landroid/app/Activity;)V

    goto :goto_69
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1964
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1965
    if-nez v0, :cond_13

    .line 1966
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1967
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1970
    :cond_13
    sput-boolean v4, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    .line 1971
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 1975
    invoke-static {p3}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 1978
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 1980
    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1985
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 1989
    :cond_33
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1990
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 2019
    :goto_3f
    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 2020
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getMailProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verizon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 2021
    invoke-static {v6, v7}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 2039
    :cond_59
    :goto_59
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2041
    return-void

    .line 1998
    :cond_5d
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    if-eqz v2, :cond_111

    const-string v2, "MAX"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "DTM"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TNL"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TMZ"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TMU"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TPL"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "COS"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TMS"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TRG"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "MBM"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "TMT"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "ORA"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "FTM"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "ORO"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "ONE"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "AMN"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "IDE"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 2009
    :cond_10b
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    goto/16 :goto_3f

    .line 2015
    :cond_111
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    goto/16 :goto_3f

    .line 2024
    :cond_118
    invoke-static {v6, v8}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_59

    .line 2027
    :cond_120
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    .line 2028
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getMailProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verizon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 2029
    invoke-static {v5, v7}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_59

    .line 2032
    :cond_13c
    invoke-static {v5, v8}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_59

    .line 2035
    :cond_144
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2036
    invoke-static {v4, v4}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_59
.end method

.method public static setAccountId(J)V
    .registers 2
    .parameter "accountId"

    .prologue
    .line 572
    sput-wide p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccountId:J

    .line 573
    return-void
.end method

.method private showHidePassword(Z)V
    .registers 5
    .parameter "show"

    .prologue
    .line 1327
    if-eqz p1, :cond_22

    .line 1328
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1335
    :goto_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1337
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    .line 1338
    return-void

    .line 1332
    .end local v0           #password:Ljava/lang/String;
    :cond_22
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_9
.end method

.method private validateFields()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1413
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    move v0, v1

    .line 1418
    :goto_28
    if-eqz v0, :cond_32

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_32

    .line 1421
    :cond_32
    invoke-direct {p0, v0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(ZZ)V

    .line 1423
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v1, :cond_62

    .line 1427
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const v1, 0x7f08002d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1434
    :goto_5a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 1435
    return-void

    .line 1413
    :cond_60
    const/4 v0, 0x0

    goto :goto_28

    .line 1430
    :cond_62
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_5a
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 1398
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1404
    return-void
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    if-eqz v0, :cond_14

    .line 1306
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_14

    .line 1309
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 1310
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 1314
    :cond_14
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 1315
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 2401
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2402
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_35

    .line 2403
    if-ne p2, v1, :cond_35

    .line 2408
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2410
    if-eqz v0, :cond_2d

    .line 2411
    new-array v3, v2, [Ljava/lang/String;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 2415
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 2424
    :goto_29
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 2450
    :cond_2c
    :goto_2c
    return-void

    .line 2419
    :cond_2d
    const-string v0, "Email"

    const-string v1, "onActivityResult() error: getAccount() returns null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2429
    :cond_35
    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_41

    .line 2430
    sput-boolean v5, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2431
    if-ne p2, v1, :cond_41

    .line 2432
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onSetupForPremiumAccount()V

    goto :goto_2c

    .line 2444
    :cond_41
    if-ne p1, v2, :cond_2c

    .line 2445
    if-ne p2, v1, :cond_2c

    .line 2446
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_2c
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 2067
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2344
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2346
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    if-ne v0, p1, :cond_13

    .line 2347
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 2349
    :cond_13
    return-void
.end method

.method public onCheckSettingsComplete(I)V
    .registers 3
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 2052
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2054
    if-nez p1, :cond_a

    .line 2055
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 2056
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 2059
    :cond_a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    .line 1391
    :cond_9
    :goto_9
    return-void

    .line 1355
    :sswitch_a
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_9

    .line 1359
    :sswitch_e
    const-string v0, "AccountSetupBasics"

    const-string v1, "play register activity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1361
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    .line 1362
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_9

    .line 1365
    :cond_27
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    if-nez v0, :cond_9

    .line 1368
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1371
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_9

    .line 1376
    :sswitch_31
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1377
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1381
    :goto_3e
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    goto :goto_9

    .line 1379
    :cond_42
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3e

    .line 1384
    :sswitch_48
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    goto :goto_9

    .line 1387
    :sswitch_4c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V

    .line 1388
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    goto :goto_9

    .line 1352
    nop

    :sswitch_data_5a
    .sparse-switch
        0x7f10002c -> :sswitch_a
        0x7f10002d -> :sswitch_e
        0x7f100040 -> :sswitch_48
        0x7f100041 -> :sswitch_31
        0x7f100046 -> :sswitch_4c
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f0c0178

    .line 1268
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1274
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1276
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1279
    if-eqz v0, :cond_22

    .line 1280
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1283
    :cond_22
    if-eqz v1, :cond_2e

    .line 1284
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1288
    :cond_2e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 586
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 588
    sput-object p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mActivity:Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    .line 592
    :cond_14
    :try_start_14
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 593
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1f} :catch_47

    .line 604
    :goto_1f
    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 606
    :cond_3f
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 1138
    :cond_42
    :goto_42
    return-void

    .line 594
    :cond_43
    const/4 v0, 0x0

    :try_start_44
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_46} :catch_47

    goto :goto_1f

    .line 595
    :catch_47
    move-exception v0

    .line 596
    const-string v4, "Z7App"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    goto :goto_1f

    .line 624
    :cond_54
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 626
    sput-boolean v2, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    .line 630
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "MAIL_PROVIDER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    .line 631
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    if-nez v0, :cond_6d

    .line 632
    const-string v0, ""

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    .line 633
    :cond_6d
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setMailProvider(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 643
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "SncRestoreFlow"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 645
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncFlowMode(Z)V

    .line 648
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 650
    :cond_9f
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 655
    :cond_a2
    :goto_a2
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v5

    .line 656
    const/4 v0, 0x5

    if-ne v5, v0, :cond_b9

    .line 658
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_42

    .line 651
    :cond_ad
    const-string v0, "com.android.email.CREATE_ACCOUNT_EAS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 652
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    goto :goto_a2

    .line 660
    :cond_b9
    const/4 v0, 0x6

    if-ne v5, v0, :cond_ee

    .line 661
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_10c

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_10c

    .line 663
    const-string v1, "AccountSetupBasics"

    const-string v3, " onCreate : FLOW_MODE_RETURN_TO_MESSAGE_LIST"

    invoke-static {v1, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_e8

    .line 665
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 671
    :goto_e0
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 672
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_42

    .line 669
    :cond_e8
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_e0

    .line 675
    :cond_ee
    if-ne v5, v10, :cond_10c

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    if-ne v0, v1, :cond_10c

    .line 678
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_107

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_107

    .line 680
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 682
    :cond_107
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_42

    .line 687
    :cond_10c
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mCanceled:Z

    .line 695
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    if-eqz v0, :cond_11c

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v6, "@hotmail.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3fa

    .line 696
    :cond_11c
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 704
    :goto_122
    const-string v0, "AccountSetupBasics"

    const-string v6, "onCreate"

    invoke-static {v0, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v6, "@hotmail.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 709
    const/4 v0, 0x4

    new-array v6, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "hotmail.com"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v2

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "msn.com"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "live.com"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v10

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Other"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v11

    .line 715
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 717
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v7, p0, v8, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 719
    const v6, 0x1090009

    invoke-virtual {v7, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 721
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 723
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupBasics$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 767
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->dispatchSetSelected(Z)V

    .line 773
    :cond_18f
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v1, :cond_402

    move v0, v1

    :goto_196
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    .line 775
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    .line 776
    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    .line 777
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mpremiumString:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 788
    const v0, 0x7f100022

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 789
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 790
    const v0, 0x7f100046

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    .line 791
    const v0, 0x7f100043

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 793
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_202

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v1, :cond_202

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_202

    .line 795
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 796
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 799
    :cond_202
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 800
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 801
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    const v0, 0x7f100047

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mTest:Landroid/widget/TextView;

    .line 807
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 811
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mpremiumString:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    const v0, 0x7f100044

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 817
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    new-array v6, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 820
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 822
    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    .line 823
    const v0, 0x7f10002d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 824
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    const/high16 v6, 0x4170

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 828
    if-ne v5, v1, :cond_429

    .line 829
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_405

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v1, :cond_405

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_405

    .line 831
    const v0, 0x7f080597

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 832
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    const v5, 0x7f0805b2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 833
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const v5, 0x7f08058e

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 834
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    const v5, 0x7f08058b

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 835
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 855
    :cond_29a
    :goto_29a
    invoke-direct {p0, v2, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(ZZ)V

    .line 857
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 859
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 883
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 915
    const v0, 0x7f10003f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 919
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 921
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 922
    if-eqz v0, :cond_2d0

    .line 932
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 936
    :cond_2d0
    const-string v0, ""

    .line 938
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_44a

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v1, :cond_44a

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_44a

    .line 940
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v0

    .line 941
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 945
    :goto_2eb
    if-eqz v0, :cond_2f5

    .line 946
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 947
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 950
    :cond_2f5
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 951
    if-eqz v0, :cond_303

    .line 952
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 953
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 956
    :cond_303
    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37e

    .line 957
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 958
    const-string v5, "SSO_ID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_369

    .line 959
    const-string v5, "SSO_ISP"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 960
    const-string v5, "SSO_ISP"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 961
    const-string v6, "SSO_ID"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 962
    const-string v7, "google"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_450

    const-string v5, "@gmail."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_450

    const-string v5, "@google."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_450

    const-string v5, "@googlemail."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_450

    .line 966
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSO_ID"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@gmail.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 972
    :cond_369
    :goto_369
    const-string v5, "SSO_PW"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37c

    .line 973
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v6, "SSO_PW"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_37c
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSetupBasics;->sso_fromIM:Z

    .line 980
    :cond_37e
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    .line 981
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 982
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c5

    .line 983
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_48c

    .line 984
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 987
    :try_start_39e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_3a5
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3a5} :catch_46a

    move-result-object v0

    .line 992
    :goto_3a6
    :try_start_3a6
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3be

    sget-object v5, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3be

    const-string v4, "de"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_477

    .line 993
    :cond_3be
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@googlemail.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3c5
    .catch Ljava/lang/NullPointerException; {:try_start_3a6 .. :try_end_3c5} :catch_480

    .line 1011
    :cond_3c5
    :goto_3c5
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_3d6

    .line 1012
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1013
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1017
    :cond_3d6
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getActionBar()Landroid/app/ActionBar;

    .line 1027
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4f6

    .line 1028
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4ae

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_4ae

    .line 1029
    const-string v0, "Email"

    const-string v1, "ERROR: Force account create only allowed while in test harness"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_42

    .line 699
    :cond_3fa
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    goto/16 :goto_122

    :cond_402
    move v0, v2

    .line 773
    goto/16 :goto_196

    .line 840
    :cond_405
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v5

    .line 842
    if-eqz v5, :cond_421

    const v0, 0x7f08003c

    :goto_412
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 844
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    if-eqz v5, :cond_425

    const v0, 0x7f080199

    :goto_41c
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29a

    .line 842
    :cond_421
    const v0, 0x7f08003b

    goto :goto_412

    .line 844
    :cond_425
    const v0, 0x7f080198

    goto :goto_41c

    .line 848
    :cond_429
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    if-ne v0, v10, :cond_29a

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->isSncMailProvider(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_29a

    .line 850
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/esp/ServiceProvider;->getProviderStringFromSnc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 851
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 852
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_29a

    .line 943
    :cond_44a
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2eb

    .line 968
    :cond_450
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v6, "SSO_ID"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_369

    .line 970
    :cond_45d
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v6, "SSO_ID"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_369

    .line 988
    :catch_46a
    move-exception v0

    .line 989
    const-string v5, "AccountSetupBasics"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_3a6

    .line 996
    :cond_477
    :try_start_477
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@gmail.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_47e
    .catch Ljava/lang/NullPointerException; {:try_start_477 .. :try_end_47e} :catch_480

    goto/16 :goto_3c5

    .line 998
    :catch_480
    move-exception v0

    .line 999
    const-string v4, "AccountSetupBasics"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c5

    .line 1003
    :cond_48c
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v10, :cond_49d

    .line 1004
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@hotmail.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c5

    .line 1005
    :cond_49d
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_3c5

    .line 1006
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@yahoo.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c5

    .line 1034
    :cond_4ae
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1035
    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    const-string v3, "USER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1037
    const-string v4, "INCOMING"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1038
    const-string v5, "OUTGOING"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4ee

    .line 1041
    :cond_4e2
    const-string v0, "Email"

    const-string v1, "ERROR: Force account create requires extras EMAIL, USER, INCOMING, OUTGOING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_42

    .line 1046
    :cond_4ee
    invoke-direct {p0, v1, v3, v4, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(I)V

    goto/16 :goto_42

    .line 1052
    :cond_4f6
    if-eqz p1, :cond_50a

    const-string v0, "AccountSetupBasics.provider"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50a

    .line 1053
    const-string v0, "AccountSetupBasics.provider"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 1059
    :cond_50a
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1064
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$3;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$3;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1073
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1074
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1075
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1081
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    sget v1, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    if-ne v0, v1, :cond_42

    .line 1082
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    .line 1083
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto/16 :goto_42
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2075
    const/4 v0, 0x4

    if-ne p1, v0, :cond_25

    .line 2076
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$7;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$7;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2082
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2083
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2085
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0801d7

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2086
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2134
    :goto_24
    return-object v0

    .line 2087
    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    .line 2089
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 2134
    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_24

    .line 2103
    :cond_30
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2b

    .line 2104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080618

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$8;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPhaseCheckDialog:Landroid/app/AlertDialog;

    .line 2111
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPhaseCheckDialog:Landroid/app/AlertDialog;

    goto :goto_24
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1258
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onDestroy()V

    .line 1259
    const-string v0, "AccountSetupBasics"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    if-eqz v0, :cond_17

    .line 1262
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1263
    :cond_17
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1477
    const-string v0, "AccountSetupBasics"

    const-string v1, "onFocusChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 1479
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_49

    .line 1480
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v1, "others"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v1, "Corporate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1482
    :cond_3a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    :cond_49
    :goto_49
    return-void

    .line 1484
    :cond_4a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 1147
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 1144
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_7

    .line 1142
    nop

    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1215
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPause()V

    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 1217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1219
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1223
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 1225
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_37

    .line 1226
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1227
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1228
    const-string v1, "AccountSetupBasics"

    const-string v2, " onResume : FLOW_MODE_RETURN_TO_MESSAGE_LIST"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1230
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 1236
    :goto_2d
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 1253
    :cond_30
    :goto_30
    return-void

    .line 1233
    :cond_31
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_2d

    .line 1240
    :cond_37
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_54

    .line 1241
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1242
    const-string v1, "AccountSetupBasics"

    const-string v2, " onResume : FLOW_MODE_RETURN_TO_CALLER"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    if-eqz v0, :cond_50

    .line 1244
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageListXL;->actionOpenAccount(Landroid/app/Activity;J)V

    .line 1245
    :cond_50
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_30

    .line 1248
    :cond_54
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 1249
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1251
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    if-eqz v0, :cond_30

    .line 1252
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V

    goto :goto_30
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1319
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1320
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_e

    .line 1321
    const-string v0, "AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1323
    :cond_e
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1410
    return-void
.end method
