.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;


# instance fields
.field private mDefaultView:Landroid/widget/CheckBox;

.field private final mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonInhibit:Z

.field private final mOwnerLookupCallable:Ljava/util/concurrent/Callable;
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

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private mReportAccountAuthenticatorError:Z

.field private mWelcomeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 118
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 418
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 703
    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .registers 4
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 170
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Landroid/app/Activity;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method

.method public static actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 164
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "FLOW_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "FLOW_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    return-object v0
.end method

.method public static actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v1, "FLOW_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    return-object v0
.end method

.method private finishAutoSetup()V
    .registers 10

    .prologue
    .line 437
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, email:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, password:Ljava/lang/String;
    :try_start_18
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {v6, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->expandTemplates(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 444
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 445
    .local v4, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUri:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 446
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsername:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 449
    .local v5, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUri:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 450
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsername:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    invoke-direct {p0, v6, v2, v7}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 457
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    iget-object v7, v4, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v8, v8, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsername:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v7, v8}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_65
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_65} :catch_66

    .line 468
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v4           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v5           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    :goto_65
    return-void

    .line 459
    :catch_66
    move-exception v1

    .line 466
    .local v1, e:Ljava/net/URISyntaxException;
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_65
.end method

.method private forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "email"
    .parameter "user"
    .parameter "incoming"
    .parameter "outgoing"

    .prologue
    .line 594
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 596
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 597
    .local v2, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-static {v2, p3}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 600
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-static {v3, p4}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 602
    const/4 v4, 0x0

    invoke-direct {p0, p2, p1, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_16} :catch_17

    .line 608
    .end local v2           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v3           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    :goto_16
    return-void

    .line 603
    :catch_17
    move-exception v1

    .line 605
    .local v1, e:Ljava/net/URISyntaxException;
    const v4, 0x7f0800b7

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 408
    .local v1, result:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_b} :catch_c

    .line 412
    :goto_b
    return-object v1

    .line 410
    :catch_c
    move-exception v2

    goto :goto_b

    .line 409
    :catch_e
    move-exception v2

    goto :goto_b
.end method

.method private onEnableProceedButtons(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 698
    return-void
.end method

.method private onManualSetup(Z)V
    .registers 13
    .parameter "allowAutoDiscover"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 551
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, email:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, password:Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, emailParts:[Ljava/lang/String;
    aget-object v8, v3, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 555
    .local v7, user:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, domain:Ljava/lang/String;
    const-string v8, "d@d.d"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    const-string v8, "debug"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 561
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettings;->actionSettingsWithDebug(Landroid/content/Context;)V

    .line 580
    :goto_4e
    return-void

    .line 567
    :cond_4f
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 568
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 569
    .local v5, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v5, v7, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v8, "placeholder"

    invoke-virtual {v5, v8, v1, v10, v9}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 572
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 573
    .local v6, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v6, v7, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v8, "placeholder"

    invoke-virtual {v6, v8, v1, v10, v9}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 576
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-direct {p0, v8, v2, v9}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAllowAutodiscover(Z)V

    .line 579
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;)V

    goto :goto_4e
.end method

.method private onNext()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 523
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v4

    if-eq v4, v5, :cond_47

    .line 524
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, email:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, emailParts:[Ljava/lang/String;
    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, domain:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 528
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v4, :cond_47

    .line 529
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v4, :cond_43

    .line 530
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    move-result-object v0

    .line 532
    .local v0, dialogFragment:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "NoteDialogFragment"

    invoke-virtual {v0, v4, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 541
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailParts:[Ljava/lang/String;
    :goto_42
    return-void

    .line 534
    .restart local v1       #domain:Ljava/lang/String;
    .restart local v2       #email:Ljava/lang/String;
    .restart local v3       #emailParts:[Ljava/lang/String;
    :cond_43
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_42

    .line 540
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailParts:[Ljava/lang/String;
    :cond_47
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_42
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "senderName"
    .parameter "senderEmail"
    .parameter "isDefault"

    .prologue
    .line 614
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 615
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/Account;->setDefaultAccount(Z)V

    .line 619
    invoke-static {p3}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 621
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 622
    .local v1, protocol:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method static setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "protocol"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x2

    .line 631
    const-string v0, "imap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 634
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 635
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 638
    :cond_13
    const-string v0, "eas"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 639
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 640
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 641
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Account;->setSyncLookback(I)V

    .line 645
    :goto_24
    return-void

    .line 643
    :cond_25
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    goto :goto_24
.end method

.method private validateFields()V
    .registers 4

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v0, 0x1

    .line 396
    .local v0, valid:Z
    :goto_27
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 400
    return-void

    .line 393
    .end local v0           #valid:Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 378
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 384
    return-void
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 335
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_14

    .line 336
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 338
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_14

    .line 339
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 340
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 343
    .end local v0           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_14
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 344
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .registers 3
    .parameter "result"

    .prologue
    .line 657
    if-nez p1, :cond_b

    .line 658
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 660
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 662
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 371
    :cond_7
    :goto_7
    return-void

    .line 362
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    if-nez v0, :cond_7

    .line 365
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_7

    .line 368
    :pswitch_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_7

    .line 359
    nop

    :pswitch_data_16
    .packed-switch 0x7f0e000f
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, action:Ljava/lang/String;
    const-string v14, "com.android.email.CREATE_ACCOUNT"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 191
    const/4 v14, 0x4

    invoke-static {v14}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 194
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "FLOW_MODE"

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 195
    .local v6, flowMode:I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_33

    .line 196
    invoke-static {v6}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 203
    :goto_2c
    const/4 v14, 0x5

    if-ne v6, v14, :cond_38

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 317
    :goto_32
    return-void

    .line 200
    :cond_33
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    goto :goto_2c

    .line 207
    :cond_38
    const/4 v14, 0x6

    if-ne v6, v14, :cond_54

    .line 208
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 209
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_54

    iget-wide v14, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_54

    .line 211
    iget-wide v14, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_32

    .line 217
    .end local v1           #account:Lcom/android/emailcommon/provider/Account;
    :cond_54
    const v14, 0x7f040007

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 219
    const v14, 0x7f0e000c

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    .line 220
    const v14, 0x7f0e0011

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 221
    const v14, 0x7f0e0012

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 222
    const v14, 0x7f0e0013

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    new-instance v14, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    sget-object v15, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    const/4 v9, 0x1

    .line 232
    .local v9, manualButtonDisplayed:Z
    const/4 v3, 0x0

    .line 233
    .local v3, alternateStrings:Z
    const/4 v14, 0x1

    if-ne v6, v14, :cond_e3

    .line 235
    const/4 v9, 0x0

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v3

    .line 238
    if-eqz v3, :cond_181

    const v14, 0x7f0800ae

    :goto_d2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    if-eqz v3, :cond_186

    const v14, 0x7f0800b2

    :goto_e0
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(I)V

    .line 247
    :cond_e3
    const v14, 0x7f0e000f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    .line 248
    const v14, 0x7f0e0010

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    if-eqz v9, :cond_18b

    const/4 v14, 0x0

    :goto_108
    invoke-virtual {v15, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 255
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "accountAuthenticatorResponse"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountAuthenticatorResponse;

    .line 260
    .local v4, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    invoke-static {v4}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 261
    if-eqz v4, :cond_13e

    .line 267
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 271
    :cond_13e
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getUsername()Ljava/lang/String;

    move-result-object v13

    .line 272
    .local v13, userName:Ljava/lang/String;
    if-eqz v13, :cond_14f

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v14, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 276
    :cond_14f
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, password:Ljava/lang/String;
    if-eqz v13, :cond_160

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 284
    :cond_160
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1db

    .line 285
    sget-object v14, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_18e

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v14

    if-nez v14, :cond_18e

    .line 287
    const-string v14, "Email"

    const-string v15, "ERROR: Force account create only allowed while in test harness"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_32

    .line 238
    .end local v4           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    .end local v11           #password:Ljava/lang/String;
    .end local v13           #userName:Ljava/lang/String;
    :cond_181
    const v14, 0x7f0800ad

    goto/16 :goto_d2

    .line 241
    :cond_186
    const v14, 0x7f0800b1

    goto/16 :goto_e0

    .line 249
    :cond_18b
    const/4 v14, 0x4

    goto/16 :goto_108

    .line 292
    .restart local v4       #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    .restart local v11       #password:Ljava/lang/String;
    .restart local v13       #userName:Ljava/lang/String;
    :cond_18e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 293
    .local v8, intent:Landroid/content/Intent;
    const-string v14, "EMAIL"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, email:Ljava/lang/String;
    const-string v14, "USER"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, user:Ljava/lang/String;
    const-string v14, "INCOMING"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, incoming:Ljava/lang/String;
    const-string v14, "OUTGOING"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, outgoing:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1ce

    .line 299
    :cond_1c2
    const-string v14, "Email"

    const-string v15, "ERROR: Force account create requires extras EMAIL, USER, INCOMING, OUTGOING"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_32

    .line 304
    :cond_1ce
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v7, v10}, Lcom/android/email/activity/setup/AccountSetupBasics;->forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(I)V

    goto/16 :goto_32

    .line 309
    .end local v5           #email:Ljava/lang/String;
    .end local v7           #incoming:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #outgoing:Ljava/lang/String;
    .end local v12           #user:Ljava/lang/String;
    :cond_1db
    if-eqz p1, :cond_1f5

    const-string v14, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f5

    .line 310
    const-string v14, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 315
    :cond_1f5
    new-instance v14, Ljava/util/concurrent/FutureTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    invoke-direct {v14, v15}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v14}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_32
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPause()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 323
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 329
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 349
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_e

    .line 350
    const-string v0, "AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 352
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
    .line 390
    return-void
.end method
