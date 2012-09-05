.class public Lcom/android/email/activity/setup/AccountSetupForSeven;
.super Lcom/seven/Z7/app/Z7AppBaseActivity;
.source "AccountSetupForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupForSeven$7;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;
    }
.end annotation


# static fields
.field private static final ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

.field private static isEasExit:Z

.field private static mAccountId:J


# instance fields
.field private accountOptionalName:Ljava/lang/String;

.field protected activeToken:I

.field private connectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/seven/util/IntArrayMap;",
            ">;"
        }
    .end annotation
.end field

.field private isExchange:Z

.field private ispType:I

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCancelButton:Landroid/widget/Button;

.field private mCanceled:Z

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDefaultAccount:Z

.field private mDestroyed:Z

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mHandler:Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

.field private mISPType:I

.field private mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private provisionOfAddAccountAction:Ljava/lang/String;

.field private selectedISPId:Ljava/lang/String;

.field private selectedISPName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flags"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    .line 253
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupForSeven;->isEasExit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>()V

    .line 240
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 244
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mHandler:Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I

    .line 1320
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showingPopupDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->stopConnectionTimeOut()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->connectors:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSetupForSeven;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccountInfo(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->addAccountForSeven()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupForSeven;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setISPServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccount()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->invalidateUrl()V

    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const-string v1, "com.android.email.AccountSetupBasics.emailaddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "com.android.email.AccountSetupBasics.password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "com.android.email.AccountSetupBasics.defaultaccount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    return-void
.end method

.method private addAccountForSeven()Z
    .registers 4

    .prologue
    .line 770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "provider"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "isp_type"

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    const/4 v1, 0x6

    :try_start_22
    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/adapter/ProtocolAdapter;->doAddAccount(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_2e

    .line 790
    const/4 v0, 0x1

    :goto_2d
    return v0

    .line 784
    :catch_2e
    move-exception v0

    .line 786
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 787
    invoke-static {p0, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 788
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private completeAddBasicAccount()V
    .registers 5

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 948
    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 950
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 951
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 953
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 960
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 961
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 962
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 963
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 967
    :cond_4e
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    .line 968
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setResult(I)V

    .line 969
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 970
    return-void
.end method

.method private findISPServer()V
    .registers 21

    .prologue
    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 489
    .local v4, currentLocale:Ljava/util/Locale;
    const/4 v13, 0x0

    .line 490
    .local v13, simcardLocale:Ljava/lang/String;
    const/4 v11, 0x0

    .line 491
    .local v11, networkOperator:Ljava/lang/String;
    const/4 v12, 0x0

    .line 493
    .local v12, simOperator:Ljava/lang/String;
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v13

    .line 494
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v11

    .line 495
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v12

    .line 496
    const-string v17, "AccountSetupForSeven"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "findNetworkinfo>> :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " findNetworkinfo>> :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " findSIMinfo>> :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_51} :catch_204

    .line 500
    :goto_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20e

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/seven/Z7/shared/ANSharedCommon;->getFromAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "work"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_87

    .line 503
    :cond_7f
    const-string v17, "other"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 567
    :cond_87
    :goto_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "gmail"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "gmail_de"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "msn"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "yahoo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_38b

    .line 571
    :cond_bf
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    .line 586
    :goto_c7
    const/4 v2, 0x0

    .line 587
    .local v2, brandId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->connectors:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_d2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seven/util/IntArrayMap;

    .line 588
    .local v3, c:Lcom/seven/util/IntArrayMap;
    const/16 v17, 0x31

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "other"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_395

    .line 591
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_100

    if-nez v2, :cond_d2

    .line 592
    :cond_100
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    .line 603
    .end local v3           #c:Lcom/seven/util/IntArrayMap;
    :cond_10e
    :goto_10e
    const-string v17, "AccountSetupForSeven"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "findISPServer>> Id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "gmail_de"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_203

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_203

    .line 608
    :cond_17c
    const-string v17, "AccountSetupForSeven"

    const-string v18, "findISPServer>> One more time!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v17, "gmail"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->connectors:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_195
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1c5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seven/util/IntArrayMap;

    .line 613
    .restart local v3       #c:Lcom/seven/util/IntArrayMap;
    const/16 v17, 0x31

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_195

    .line 616
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    .line 621
    .end local v3           #c:Lcom/seven/util/IntArrayMap;
    :cond_1c5
    const-string v17, "AccountSetupForSeven"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Re-findISPServer>> Id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_203
    return-void

    .line 497
    .end local v2           #brandId:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_204
    move-exception v7

    .line 498
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "AccountSetupForSeven"

    const-string v18, "findISPServer>>  simcardInfo Exception!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 506
    .end local v7           #e:Ljava/lang/Exception;
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@gmail."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@google."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@googlemail."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_26a

    .line 508
    :cond_238
    sget-object v17, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_256

    sget-object v17, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_256

    const-string v17, "de"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_260

    .line 510
    :cond_256
    const-string v17, "gmail_de"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_87

    .line 512
    :cond_260
    const-string v17, "gmail"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_87

    .line 514
    :cond_26a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@msn."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_294

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@hotmail."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_294

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@live."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_29e

    .line 516
    :cond_294
    const-string v17, "msn"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_87

    .line 517
    :cond_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@yahoo."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@ymail."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@y7mail."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@kimo.com"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@ybb."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_30e

    .line 520
    :cond_2e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".jp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_304

    .line 521
    const-string v17, "yahoo_jp"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 522
    const-string v17, "Yahoo! Japan"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    goto/16 :goto_87

    .line 524
    :cond_304
    const-string v17, "yahoo"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_87

    .line 528
    :cond_30e
    const/4 v15, 0x0

    .line 530
    .local v15, withOutDotDomain:Ljava/lang/String;
    :try_start_30f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, emailParts:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v8, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 532
    .local v14, username:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 533
    .local v10, imsi:[C
    const/16 v17, 0x1

    aget-object v17, v8, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, domain:Ljava/lang/String;
    const-string v17, "[.]"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 535
    .local v6, domainWithoutDot:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v6, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 536
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 537
    const/16 v17, 0x0

    aget-char v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v17

    if-eqz v17, :cond_359

    .line 538
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-char v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    aput-char v18, v10, v17

    .line 539
    :cond_359
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_360} :catch_386

    .end local v15           #withOutDotDomain:Ljava/lang/String;
    .local v16, withOutDotDomain:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 544
    .end local v5           #domain:Ljava/lang/String;
    .end local v6           #domainWithoutDot:[Ljava/lang/String;
    .end local v8           #emailParts:[Ljava/lang/String;
    .end local v10           #imsi:[C
    .end local v14           #username:Ljava/lang/String;
    .end local v16           #withOutDotDomain:Ljava/lang/String;
    .restart local v15       #withOutDotDomain:Ljava/lang/String;
    :goto_362
    const-string v17, "AccountSetupForSeven"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ISPServer>> ISP: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v17, "other"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_87

    .line 541
    :catch_386
    move-exception v7

    .line 542
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_362

    .line 573
    .end local v7           #e:Ljava/lang/Exception;
    .end local v15           #withOutDotDomain:Ljava/lang/String;
    :cond_38b
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    goto/16 :goto_c7

    .line 596
    .restart local v2       #brandId:Ljava/lang/String;
    .restart local v3       #c:Lcom/seven/util/IntArrayMap;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d2

    .line 597
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    goto/16 :goto_10e
.end method

.method private invalidateUrl()V
    .registers 3

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 864
    const v0, 0x7f08045a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 865
    return-void
.end method

.method private onCancel()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 470
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mCanceled:Z

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 473
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->onCloseActivity()V

    .line 474
    return-void
.end method

.method private onCloseActivity()V
    .registers 7

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mHandler:Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$1;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 485
    return-void
.end method

.method private registerPremiumAccount()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 691
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->isExchange:Z

    if-eqz v0, :cond_52

    .line 692
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 695
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    .line 696
    .local v7, domain:Ljava/lang/String;
    const-string v8, "://"

    .line 697
    .local v8, domainDelimiter:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 698
    .local v9, sIdx:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 699
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 700
    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 702
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    .line 706
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #domainDelimiter:Ljava/lang/String;
    .end local v9           #sIdx:I
    :cond_52
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findISPServer()V

    .line 709
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->addAccountForSeven()Z

    move-result v0

    if-nez v0, :cond_63

    .line 766
    :cond_62
    :goto_62
    return-void

    .line 714
    :cond_63
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I

    if-ne v0, v2, :cond_62

    .line 715
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/digc/seven/SevenSyncProvider;->getAccountID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 716
    .local v10, sevenAccountId:I
    if-ne v10, v2, :cond_73

    .line 717
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    goto :goto_62

    .line 720
    :cond_73
    const/4 v6, 0x0

    .line 722
    .local v6, c:Landroid/database/Cursor;
    :try_start_74
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sevenAccountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 727
    if-eqz v6, :cond_b5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_b5

    .line 728
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v10, p0}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    .line 729
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$5;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a8
    .catchall {:try_start_74 .. :try_end_a8} :catchall_ae

    .line 747
    if-eqz v6, :cond_62

    .line 748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_62

    .line 747
    :catchall_ae
    move-exception v0

    if-eqz v6, :cond_b4

    .line 748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 747
    :cond_b4
    throw v0

    :cond_b5
    if-eqz v6, :cond_ba

    .line 748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    :cond_ba
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    .line 757
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_62
.end method

.method private registerPremiumAccountInfo(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 808
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->restoreAccountWithId(I)V

    .line 812
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->actionOptions(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setResult(I)V

    .line 818
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 822
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x4

    move v5, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 827
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 828
    return-void
.end method

.method private restoreAccountWithId(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 832
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 833
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 835
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 836
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_49

    .line 840
    :cond_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 843
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 844
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 846
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 847
    return-void

    .line 840
    :catchall_49
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setISPServer()Z
    .registers 4

    .prologue
    .line 986
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 988
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 989
    const-string v1, "isp_type"

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->ispType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    const-string v1, "username"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    const-string v1, "_connector"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string v1, "optional_name"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->accountOptionalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string v1, "is_default"

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDefaultAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method private setMessage(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$2;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$2;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method


# virtual methods
.method public checkAccountState()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 874
    const/4 v10, 0x0

    .line 875
    .local v10, isSecurityHold:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/setup/AccountSetupForSeven;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 879
    .local v6, c:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 880
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_36

    move-result v8

    .line 881
    .local v8, flags:I
    and-int/lit8 v0, v8, 0x20

    if-eqz v0, :cond_27

    .line 882
    const/4 v10, 0x1

    .line 888
    .end local v8           #flags:I
    :cond_27
    :goto_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 890
    if-eqz v10, :cond_40

    .line 891
    sget-wide v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccountId:J

    invoke-static {p0, v0, v1, v11}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v9

    .line 893
    .local v9, i:Landroid/content/Intent;
    invoke-virtual {p0, v9, v11}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    .line 897
    .end local v9           #i:Landroid/content/Intent;
    :goto_35
    return-void

    .line 885
    :catch_36
    move-exception v7

    .line 886
    .local v7, e:Ljava/lang/Exception;
    :try_start_37
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_27

    .line 888
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_3b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 895
    :cond_40
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V

    goto :goto_35
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 901
    if-nez p1, :cond_7

    .line 902
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V

    .line 937
    :cond_6
    :goto_6
    return-void

    .line 913
    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_14

    .line 914
    if-ne p2, v1, :cond_10

    .line 915
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setResult(I)V

    .line 917
    :cond_10
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    goto :goto_6

    .line 919
    :cond_14
    if-ne p2, v1, :cond_6

    .line 920
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showProgressDialog()V

    .line 928
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 930
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->checkAccountState()V

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10004e

    if-ne v0, v1, :cond_c

    .line 465
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->onCancel()V

    .line 467
    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 449
    const v2, 0x7f10004e

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 451
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 454
    .local v1, cancelButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_21

    .line 455
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    :cond_21
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 322
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 323
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_15

    .line 325
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 388
    :goto_14
    return-void

    .line 332
    :cond_15
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    .line 334
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setContentView(I)V

    .line 345
    const v1, 0x7f10004c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mMessageView:Landroid/widget/TextView;

    .line 346
    const v1, 0x7f10004d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressBar:Landroid/widget/ProgressBar;

    .line 347
    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mCancelButton:Landroid/widget/Button;

    .line 348
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v1, 0x7f0800d3

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setMessage(I)V

    .line 350
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 352
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 354
    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    .line 357
    :cond_74
    const-string v1, "com.android.email.AccountSetupBasics.emailaddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    .line 358
    const-string v1, "com.android.email.AccountSetupBasics.password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    .line 359
    const-string v1, "com.android.email.AccountSetupBasics.defaultaccount"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDefaultAccount:Z

    .line 361
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    if-eqz v1, :cond_98

    .line 362
    const-string v1, "extra_selected_provision_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    .line 370
    :cond_98
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 372
    if-eqz p1, :cond_b2

    const-string v1, "com.android.email.AccountSetupBasics.provider"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 373
    const-string v1, "com.android.email.AccountSetupBasics.provider"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 377
    :cond_b2
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 380
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Lcom/android/email/activity/setup/AccountSetupForSeven$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 382
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 384
    const-string v1, "AccountSetupForSeven"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startConnectionTimeOut()V

    goto/16 :goto_14
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 643
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    .line 644
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800d1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupForSeven$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$3;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 669
    :goto_39
    return-object v0

    .line 656
    :cond_3a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_62

    .line 657
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupForSeven$4;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$4;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 663
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 665
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 666
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0801d7

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_39

    .line 669
    :cond_62
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_39
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->stopConnectionTimeOut()V

    .line 413
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onDestroy()V

    .line 418
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    if-eqz v0, :cond_16

    .line 419
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 424
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    if-eqz v0, :cond_21

    .line 425
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 427
    :cond_21
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 1071
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onPause()V

    .line 403
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 677
    packed-switch p1, :pswitch_data_1e

    .line 688
    :cond_3
    :goto_3
    return-void

    .line 679
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 680
    check-cast v0, Landroid/app/AlertDialog;

    .line 681
    .local v0, alert:Landroid/app/AlertDialog;
    const v1, 0x7f0800d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 677
    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 442
    const-string v0, "com.android.email.DUPLEACCOUNTNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onResume()V

    .line 398
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 432
    const-string v0, "com.android.email.AccountSetupBasics.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_1c

    .line 434
    const-string v0, "com.android.email.AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 435
    const-string v0, "com.android.email.DUPLEACCOUNTNAME"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1c
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 392
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStart()V

    .line 393
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 407
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStop()V

    .line 408
    return-void
.end method
