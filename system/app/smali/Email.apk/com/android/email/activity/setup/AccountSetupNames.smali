.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# static fields
.field public static forceSync:Z


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mEasAccount:Z

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;

.field private mNextPressed:Z

.field private mSevenAccount:Z

.field private signonIM:Landroid/widget/CheckBox;

.field private sso_id:Ljava/lang/String;

.field private sso_isp:Ljava/lang/String;

.field private sso_pw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    .line 591
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->updateExchangeProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->signonIM:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;)V
    .registers 2
    .parameter "fromActivity"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {p0, v0, v0, v0}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string v1, "SSO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "SSO_PW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "SSO_ISP"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method private finishActivity()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 470
    sput-boolean v5, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    .line 471
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 474
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v2, :cond_18

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-ne v0, v2, :cond_18

    .line 476
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupNames$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupNames$2;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 509
    :cond_18
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eqz v0, :cond_72

    .line 510
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v8

    .line 512
    .local v8, flowMode:I
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setAccountId(J)V

    .line 513
    const/4 v0, 0x2

    if-ne v8, v0, :cond_64

    if-eqz v7, :cond_64

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-ltz v0, :cond_64

    .line 516
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    .line 517
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedFromSetting(Landroid/app/Activity;J)V

    .line 543
    .end local v8           #flowMode:I
    :goto_3b
    if-eqz v7, :cond_54

    .line 544
    new-array v3, v2, [Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 547
    .local v3, ids:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x5

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 552
    .end local v3           #ids:[Ljava/lang/String;
    :cond_54
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 553
    .local v9, timer:Ljava/util/Timer;
    new-instance v10, Lcom/android/email/activity/setup/AccountSetupNames$3;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupNames$3;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 560
    .local v10, ttask:Ljava/util/TimerTask;
    const-wide/16 v0, 0x3e8

    invoke-virtual {v9, v10, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 561
    return-void

    .line 518
    .end local v9           #timer:Ljava/util/Timer;
    .end local v10           #ttask:Ljava/util/TimerTask;
    .restart local v8       #flowMode:I
    :cond_64
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v2, :cond_6e

    .line 519
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_3b

    .line 521
    :cond_6e
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    goto :goto_3b

    .line 524
    .end local v8           #flowMode:I
    :cond_72
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setAccountId(J)V

    .line 525
    if-eqz v7, :cond_90

    .line 527
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v2, :cond_8a

    .line 528
    const-string v0, "AccountSetupNames"

    const-string v1, "Launching AccountSetupSncAccounts screen"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_3b

    .line 532
    :cond_8a
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    goto :goto_3b

    .line 539
    :cond_90
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_3b
.end method

.method private getDomain()Ljava/lang/String;
    .registers 8

    .prologue
    .line 725
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 726
    .local v3, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 727
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v1, :cond_15

    .line 728
    const-string v5, "AccountSetupNames"

    const-string v6, "FATAL : HostAuth is Null"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x0

    .line 742
    :cond_14
    :goto_14
    return-object v0

    .line 731
    :cond_15
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 732
    .local v4, userName:Ljava/lang/String;
    const-string v0, ""

    .line 733
    .local v0, domain:Ljava/lang/String;
    if-eqz v4, :cond_14

    .line 734
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 735
    .local v2, index:I
    if-ltz v2, :cond_14

    .line 736
    if-lez v2, :cond_2a

    .line 737
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 739
    :cond_2a
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_14
.end method

.method private getUserName()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 746
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 747
    .local v2, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 748
    .local v0, email:Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, emailParts:[Ljava/lang/String;
    const-string v3, "AccountSetupNames"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    aget-object v3, v1, v6

    return-object v3
.end method

.method private onNext()V
    .registers 5

    .prologue
    .line 569
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 570
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, description:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 572
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 574
    :cond_1b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 577
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 578
    return-void
.end method

.method private updateExchangeProfile()V
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 661
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 662
    .local v2, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v12, "AccountSetupNames"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Backing up ExchangeProfile for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v12, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-nez v12, :cond_cc

    .line 668
    const-string v12, "AccountSetupNames"

    const-string v13, "Cretaing New Profile to Back up"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    new-instance v9, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v9}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>()V

    .line 674
    .local v9, userProfile:Lcom/android/email/syncnconnect/utils/SncProfile;
    :goto_32
    iget-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 675
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v1, :cond_dd

    .line 676
    iget-object v12, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeServer(Ljava/lang/String;)V

    .line 677
    iget v12, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_d7

    move v4, v10

    .line 678
    .local v4, ssl:Z
    :goto_46
    iget v12, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_da

    move v8, v10

    .line 679
    .local v8, trustCertificates:Z
    :goto_4d
    invoke-virtual {v9, v4}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeSecureFlag(Z)V

    .line 680
    invoke-virtual {v9, v8}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeVerifyCertFlag(Z)V

    .line 685
    .end local v4           #ssl:Z
    .end local v8           #trustCertificates:Z
    :goto_53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUser(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeEmail(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDomain(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setFirstName(Ljava/lang/String;)V

    .line 690
    new-instance v0, Landroid/accounts/Account;

    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v11, "com.android.exchange"

    invoke-direct {v0, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v0, acct:Landroid/accounts/Account;
    const-string v10, "com.android.calendar"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 697
    .local v5, synCalendar:Z
    invoke-virtual {v9, v5}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeCalSyncFlag(Z)V

    .line 699
    const-string v10, "com.android.contacts"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 701
    .local v6, synContacts:Z
    invoke-virtual {v9, v6}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeABSyncFlag(Z)V

    .line 707
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v10

    invoke-static {v10}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v7

    .line 708
    .local v7, syncLookBack:I
    invoke-virtual {v9, v7}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDaysToSync(I)V

    .line 709
    const-string v10, "html"

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMessageFormat(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationStartTime(I)V

    .line 713
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationEndTime(I)V

    .line 715
    const/4 v10, 0x5

    const/16 v11, 0x9

    invoke-static {v10, v11}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v3

    .line 717
    .local v3, mType:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Lcom/android/email/Controller;->updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 718
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v10, :cond_cb

    .line 719
    const-string v10, "AccountSetupNames"

    const-string v11, "Exisiting Profile updated"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    sput-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 722
    :cond_cb
    return-void

    .line 671
    .end local v0           #acct:Landroid/accounts/Account;
    .end local v1           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v3           #mType:I
    .end local v5           #synCalendar:Z
    .end local v6           #synContacts:Z
    .end local v7           #syncLookBack:I
    .end local v9           #userProfile:Lcom/android/email/syncnconnect/utils/SncProfile;
    :cond_cc
    const-string v12, "AccountSetupNames"

    const-string v13, "Updating Exisiting Profile to Back up"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .restart local v9       #userProfile:Lcom/android/email/syncnconnect/utils/SncProfile;
    goto/16 :goto_32

    .restart local v1       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_d7
    move v4, v11

    .line 677
    goto/16 :goto_46

    .restart local v4       #ssl:Z
    :cond_da
    move v8, v11

    .line 678
    goto/16 :goto_4d

    .line 682
    .end local v4           #ssl:Z
    :cond_dd
    const-string v10, "AccountSetupNames"

    const-string v11, "FATAL : HostAuth is Null"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53
.end method

.method private validateFields()V
    .registers 5

    .prologue
    .line 441
    const/4 v0, 0x1

    .line 444
    .local v0, newEnabled:Z
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    if-nez v2, :cond_2c

    .line 445
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, userName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v0, 0x1

    .line 447
    :goto_1e
    if-nez v0, :cond_38

    .line 448
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f0800da

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 454
    .end local v1           #userName:Ljava/lang/String;
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    if-eqz v2, :cond_35

    .line 455
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 456
    :cond_35
    return-void

    .line 446
    .restart local v1       #userName:Ljava/lang/String;
    :cond_36
    const/4 v0, 0x0

    goto :goto_1e

    .line 451
    :cond_38
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method


# virtual methods
.method public actionAccountToIM()V
    .registers 4

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.seven.Z7.ACTION_IM_SSO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    const-string v2, "gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 118
    const-string v1, "google"

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    .line 124
    :cond_15
    :goto_15
    const-string v1, "SSO_ID"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "SSO_PW"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_pw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "SSO_ISP"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void

    .line 119
    :cond_30
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    const-string v2, "msn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 120
    const-string v1, "ms"

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    goto :goto_15

    .line 121
    :cond_3f
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    const-string v2, "yahoo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 122
    const-string v1, "yahoo"

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    goto :goto_15
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 648
    sparse-switch p1, :sswitch_data_c

    .line 654
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 655
    return-void

    .line 651
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_3

    .line 648
    nop

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_7
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_7

    .line 464
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    .line 466
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 435
    :goto_7
    return-void

    .line 429
    :sswitch_8
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_f

    .line 430
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 432
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    goto :goto_7

    .line 421
    nop

    :sswitch_data_14
    .sparse-switch
        0x7f10001e -> :sswitch_8
        0x7f10002d -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 391
    const v2, 0x7f10001e

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 393
    .local v0, doneButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 396
    .local v1, doneButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_21

    .line 397
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 401
    :cond_21
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 24
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 178
    const v18, 0x7f04001f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 187
    .local v4, actionBar:Landroid/app/ActionBar;
    const v18, 0x7f100074

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 188
    const v18, 0x7f100003

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 191
    const v18, 0x7f100078

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->signonIM:Landroid/widget/CheckBox;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->signonIM:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 196
    .local v11, i:Landroid/content/Intent;
    const-string v18, "SSO_ID"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->sso_id:Ljava/lang/String;

    .line 197
    const-string v18, "SSO_PW"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->sso_pw:Ljava/lang/String;

    .line 198
    const-string v18, "SSO_ISP"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    .line 209
    const v18, 0x7f10001e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v16, Lcom/android/email/activity/setup/AccountSetupNames$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 224
    .local v16, validationTextWatcher:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static/range {v19 .. v20}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 227
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 229
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_e8

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_f6

    .line 234
    :cond_e8
    const-string v18, "Email"

    const-string v19, "Account is null "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 371
    :cond_f5
    :goto_f5
    return-void

    .line 240
    :cond_f6
    if-nez v3, :cond_100

    .line 241
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "unexpected null account"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 243
    :cond_100
    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_10e

    .line 244
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "unexpected null hostauth"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 248
    :cond_10e
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, email:Ljava/lang/String;
    const-string v18, "@"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, emailParts:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v10, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 252
    .local v15, username:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 255
    .local v12, imsi:[C
    new-instance v15, Ljava/lang/String;

    .end local v15           #username:Ljava/lang/String;
    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([C)V

    .line 256
    .restart local v15       #username:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 259
    const/16 v18, 0x1

    aget-object v18, v10, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, domain:Ljava/lang/String;
    const-string v18, "[.]"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, domainWithoutDot:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v8, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, withOutDotDomain:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 264
    const/16 v18, 0x0

    aget-char v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v18

    if-eqz v18, :cond_179

    .line 265
    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-char v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    aput-char v19, v12, v18

    .line 266
    :cond_179
    new-instance v17, Ljava/lang/String;

    .end local v17           #withOutDotDomain:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([C)V

    .line 268
    .restart local v17       #withOutDotDomain:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 269
    .local v5, currentLocale:Ljava/util/Locale;
    const/4 v14, 0x0

    .line 271
    .local v14, simcardLocale:Ljava/lang/String;
    :try_start_185
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_18c} :catch_33c

    move-result-object v14

    .line 276
    :goto_18d
    :try_start_18d
    sget-object v18, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1ab

    sget-object v18, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1ab

    const-string v18, "de"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1bb

    :cond_1ab
    const-string v18, "Gmail"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1bb

    .line 278
    const-string v2, "Google Mail"

    .line 279
    .local v2, GERMAN_GMAIL:Ljava/lang/String;
    const-string v17, "Google Mail"
    :try_end_1bb
    .catch Ljava/lang/NullPointerException; {:try_start_18d .. :try_end_1bb} :catch_339

    .line 285
    .end local v2           #GERMAN_GMAIL:Ljava/lang/String;
    :cond_1bb
    :goto_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 288
    const v18, 0x7f100076

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSelected(Z)V

    .line 289
    const v18, 0x7f100074

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSelected(Z)V

    .line 294
    const-string v18, "eas"

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 295
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_2a1

    const/16 v18, 0x1

    :goto_217
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    move/from16 v18, v0

    if-nez v18, :cond_22d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    move/from16 v18, v0

    if-eqz v18, :cond_254

    .line 297
    :cond_22d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setVisibility(I)V

    .line 298
    const v18, 0x7f100075

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const v19, 0x2000006

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 314
    :cond_254
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 316
    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 318
    .local v13, salesCode:Ljava/lang/String;
    if-eqz v13, :cond_2a5

    const-string v18, "O2U"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a5

    .line 319
    const v18, 0x7f0801dc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 347
    :cond_279
    :goto_279
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v6, cv:Landroid/content/ContentValues;
    const-string v18, "signature"

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 353
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f5

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    goto/16 :goto_f5

    .line 295
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v13           #salesCode:Ljava/lang/String;
    :cond_2a1
    const/16 v18, 0x0

    goto/16 :goto_217

    .line 321
    .restart local v13       #salesCode:Ljava/lang/String;
    :cond_2a5
    if-eqz v13, :cond_2c2

    const-string v18, "PRT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2c2

    .line 322
    const v18, 0x7f0801dd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    goto :goto_279

    .line 324
    :cond_2c2
    if-eqz v13, :cond_2df

    const-string v18, "CEL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2df

    .line 325
    const v18, 0x7f0801de

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    goto :goto_279

    .line 327
    :cond_2df
    if-eqz v13, :cond_2fd

    const-string v18, "PTR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2fd

    .line 328
    const v18, 0x7f0801df

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_279

    .line 330
    :cond_2fd
    if-eqz v13, :cond_31b

    const-string v18, "TMB"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31b

    .line 331
    const v18, 0x7f0801e1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_279

    .line 333
    :cond_31b
    if-eqz v13, :cond_279

    const-string v18, "ATT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_279

    .line 334
    const v18, 0x7f0801e2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_279

    .line 281
    .end local v13           #salesCode:Ljava/lang/String;
    :catch_339
    move-exception v18

    goto/16 :goto_1bb

    .line 272
    :catch_33c
    move-exception v18

    goto/16 :goto_18d
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 407
    const/4 v0, 0x6

    if-eq p2, v0, :cond_d

    if-eqz p3, :cond_1c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1c

    .line 409
    :cond_d
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 410
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 413
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 381
    return-void
.end method
