.class public abstract Lcom/google/android/finsky/activities/AuthenticatedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;


# static fields
.field private static final ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

.field protected static sSwitchToMyApps:Z


# instance fields
.field private final mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mJustReturnedFromDialog:Z

.field private final mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRestartRequired:Z

.field mStateSaved:Z

.field private mWaitingForUserInput:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    .line 843
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$11;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$11;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    .line 855
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->checkTosAcceptanceAndContinue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    return p1
.end method

.method private addAccount()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 865
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 866
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    const-string v2, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v6, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    move-object v5, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 890
    return-void
.end method

.method private checkTosAcceptanceAndContinue(Z)V
    .registers 3
    .parameter "shouldHandleIntent"

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->displayTos()Z

    move-result v0

    if-nez v0, :cond_9

    .line 776
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V

    .line 778
    :cond_9
    return-void
.end method

.method private static convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;
    .registers 4
    .parameter "accounts"

    .prologue
    .line 448
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/String;

    .line 449
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 450
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 452
    :cond_10
    return-object v0
.end method

.method public static createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 893
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 894
    .local v0, addAccountOptions:Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 896
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 897
    const-string v2, "introMessage"

    const v3, 0x7f0700e5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v2, "allowSkip"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 900
    return-object v0
.end method

.method private determineAccount()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, accountNameFromIntent:Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 469
    invoke-static {v2, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 473
    .local v1, accountFromIntent:Landroid/accounts/Account;
    if-nez v1, :cond_23

    .line 474
    const-string v5, "This app was called with an intent that specified the account %s, which is not a valid account on this device"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    move-object v3, v4

    .line 500
    .end local v1           #accountFromIntent:Landroid/accounts/Account;
    :cond_22
    :goto_22
    return-object v3

    .line 479
    .restart local v1       #accountFromIntent:Landroid/accounts/Account;
    :cond_23
    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_22

    .line 483
    .end local v1           #accountFromIntent:Landroid/accounts/Account;
    :cond_26
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, currentAccount:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 493
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 494
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_3d

    .line 496
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_22

    :cond_3d
    move-object v3, v4

    .line 500
    goto :goto_22
.end method

.method private displayTos()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 510
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, account:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 512
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 513
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/google/android/finsky/activities/TosActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Landroid/content/Intent;

    move-result-object v1

    .line 514
    .local v1, showTos:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 515
    const/16 v3, 0x14

    invoke-virtual {p0, v1, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 518
    .end local v1           #showTos:Landroid/content/Intent;
    :goto_2b
    return v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method private fireOnReadyRunnable(Z)V
    .registers 4
    .parameter "shouldHandleIntent"

    .prologue
    .line 544
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/receivers/Installer;->startDeferredInstalls()V

    .line 545
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hideLoadingIndicator()V

    .line 547
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 557
    .local v0, onReadyRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method private static getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "accountNames"
    .parameter "accountToFind"

    .prologue
    .line 569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 570
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 574
    .end local v0           #i:I
    :goto_c
    return v0

    .line 569
    .restart local v0       #i:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private getMarketMetadataAndLoadLibraries(Z)V
    .registers 7
    .parameter "shouldHandleIntent"

    .prologue
    .line 803
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 813
    .local v0, continueWhenDone:Ljava/lang/Runnable;
    new-instance v1, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    .line 814
    .local v1, sendMetadataAction:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/AuthenticatedActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$9;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/Runnable;)V

    new-instance v4, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 831
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    .line 832
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method private isAccountSwitchNeeded(Ljava/lang/String;)Z
    .registers 3
    .parameter "accountName"

    .prologue
    .line 603
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private loadTocAndContinue(Z)V
    .registers 7
    .parameter "shouldHandleIntent"

    .prologue
    const/4 v4, 0x1

    .line 735
    new-array v0, v4, [Z

    .line 736
    .local v0, responseReceived:[Z
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[ZZ)V

    new-instance v3, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    .line 769
    return-void
.end method

.method private performFirstRunIfNecessary(Z)V
    .registers 3
    .parameter "shouldHandleIntent"

    .prologue
    .line 723
    invoke-static {}, Lcom/google/android/finsky/activities/FirstRunActivity;->requiresFirstRun()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 724
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivity(Landroid/content/Intent;)V

    .line 725
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 729
    :goto_14
    return-void

    .line 728
    :cond_15
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getMarketMetadataAndLoadLibraries(Z)V

    goto :goto_14
.end method

.method private setupAccountAndContinue(Z)V
    .registers 4
    .parameter "shouldHandleIntent"

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 709
    sget-boolean v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

    if-eqz v1, :cond_e

    .line 710
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V

    .line 720
    :goto_d
    return-void

    .line 712
    :cond_e
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    goto :goto_d

    .line 715
    :cond_13
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 716
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    goto :goto_d

    .line 719
    :cond_1d
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->performFirstRunIfNecessary(Z)V

    goto :goto_d
.end method

.method private setupAccountCreationDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 633
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700d6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700d7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 645
    .local v0, alert:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private setupAccountDialog()Landroid/app/AlertDialog;
    .registers 7

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 655
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, accountNames:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 660
    .local v4, currentAccountIndex:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0700e2

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 662
    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[Landroid/accounts/Account;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 685
    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 693
    .local v2, alert:Landroid/app/AlertDialog;
    return-object v2
.end method


# virtual methods
.method protected authenticateOnNewIntent(Z)V
    .registers 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    .line 247
    return-void
.end method

.method public chooseAccount(Z)V
    .registers 11
    .parameter "goToMyDownloads"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 323
    sput-boolean p1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sSwitchToMyApps:Z

    .line 324
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_2b

    .line 325
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 326
    .local v0, currentAccount:Landroid/accounts/Account;
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "com.google"

    aput-object v4, v2, v5

    const-string v5, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    move-object v4, v1

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 334
    .local v8, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {p0, v8, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    .end local v0           #currentAccount:Landroid/accounts/Account;
    .end local v8           #intent:Landroid/content/Intent;
    :goto_2a
    return-void

    .line 336
    :cond_2b
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    goto :goto_2a
.end method

.method protected getJustReturnedFromDialog()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    return v0
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 252
    return-void
.end method

.method protected handleUserAuthentication(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 837
    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 838
    return-void
.end method

.method public hasDiffVersionCode()Z
    .registers 5

    .prologue
    .line 584
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v0

    .line 585
    .local v0, currentVersionCode:I
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 588
    .local v1, lastVersionCode:I
    if-eq v1, v0, :cond_21

    .line 589
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 590
    const/4 v2, 0x1

    .line 592
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method protected hideLoadingIndicator()V
    .registers 5

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 619
    .local v0, contentFrame:Landroid/view/ViewGroup;
    const v2, 0x7f0800d5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 620
    .local v1, loading:Landroid/view/View;
    if-eqz v1, :cond_19

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 623
    :cond_19
    return-void
.end method

.method public isStateSaved()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    return v0
.end method

.method public isTosAccepted()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 533
    :cond_b
    :goto_b
    return v2

    .line 529
    :cond_c
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 530
    .local v1, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_b

    .line 533
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 261
    sparse-switch p1, :sswitch_data_58

    .line 311
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 313
    :cond_8
    :goto_8
    return-void

    .line 263
    :sswitch_9
    const/4 v2, -0x1

    if-ne p2, v2, :cond_25

    .line 264
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 266
    const-string v2, "b/5160617: Switch account to %s due to request code"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    goto :goto_8

    .line 271
    .end local v0           #accountName:Ljava/lang/String;
    :cond_25
    sput-boolean v5, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sSwitchToMyApps:Z

    goto :goto_8

    .line 275
    :sswitch_28
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 276
    if-nez p2, :cond_30

    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_8

    .line 287
    :cond_30
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_8

    .line 291
    :sswitch_34
    if-nez p2, :cond_3a

    .line 292
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->chooseAccount(Z)V

    goto :goto_8

    .line 295
    :cond_3a
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 296
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_8

    .line 299
    :sswitch_40
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 302
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 303
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-nez v2, :cond_54

    .line 304
    const-string v2, "No new account added: Assume the user canceled and finish."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_8

    .line 308
    :cond_54
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_8

    .line 261
    :sswitch_data_58
    .sparse-switch
        0x14 -> :sswitch_28
        0x15 -> :sswitch_40
        0x16 -> :sswitch_34
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method public onBackgroundDataNotEnabled()V
    .registers 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 216
    return-void
.end method

.method protected onCleanup()V
    .registers 1

    .prologue
    .line 346
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    if-eqz p1, :cond_e

    .line 149
    const-string v0, "waiting_for_user_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 153
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showLoadingIndicator()V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hasDiffVersionCode()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 159
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "Diff version code, clear cache"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_22
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 174
    :goto_2e
    return-void

    .line 167
    :cond_2f
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_3a

    const-string v0, "Same version code as before"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_3a
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    if-nez v0, :cond_43

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    goto :goto_2e

    .line 171
    :cond_43
    const-string v0, "Waiting for user to return from auth screen."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "id"
    .parameter "args"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_26

    .line 357
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_1c
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountCreationDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 355
    :goto_20
    return-object v0

    :pswitch_21
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_20

    .line 351
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    .line 386
    const/4 v0, 0x1

    .line 392
    .local v0, shouldHandleIntent:Z
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 394
    const/4 v0, 0x0

    .line 398
    :cond_19
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->authenticateOnNewIntent(Z)V

    .line 399
    return-void
.end method

.method protected abstract onReady(Z)V
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 190
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 191
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mRestartRequired:Z

    if-eqz v0, :cond_e

    .line 192
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V

    .line 207
    :goto_d
    return-void

    .line 195
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getJustReturnedFromDialog()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 196
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    .line 199
    :cond_1b
    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showBackgroundDataDialog()V

    goto :goto_d

    .line 205
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->dismissExisting(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 221
    const-string v0, "waiting_for_user_input"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 185
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 233
    return-void
.end method

.method protected reinitialize(Landroid/accounts/Account;Z)V
    .registers 6
    .parameter "account"
    .parameter "clearCache"

    .prologue
    const/4 v2, 0x0

    .line 417
    if-nez p1, :cond_11

    .line 418
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 419
    if-nez p1, :cond_11

    .line 421
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V

    .line 439
    :goto_10
    return-void

    .line 426
    :cond_11
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 429
    .local v0, application:Lcom/google/android/finsky/FinskyApp;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCleanup()V

    .line 431
    if-eqz p2, :cond_1d

    .line 432
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 435
    :cond_1d
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 436
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->switchCurrentAccount(Landroid/accounts/Account;)V

    .line 438
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    goto :goto_10
.end method

.method protected restart()V
    .registers 6

    .prologue
    .line 917
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mRestartRequired:Z

    .line 918
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_d

    .line 919
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->recreate()V

    .line 936
    :goto_c
    return-void

    .line 921
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 923
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 924
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method public restartOnResume()V
    .registers 2

    .prologue
    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mRestartRequired:Z

    .line 911
    return-void
.end method

.method protected setJustReturnedFromDialog(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    .line 374
    return-void
.end method

.method protected showBackgroundDataDialog()V
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->show(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;)V

    .line 211
    return-void
.end method

.method protected showLoadingIndicator()V
    .registers 6

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 608
    .local v0, contentFrame:Landroid/view/ViewGroup;
    const v2, 0x7f0800d5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, loading:Landroid/view/View;
    if-eqz v1, :cond_17

    .line 615
    :goto_16
    return-void

    .line 613
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 615
    goto :goto_16
.end method

.method protected startInitializationActions(Z)V
    .registers 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showLoadingIndicator()V

    .line 698
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountAndContinue(Z)V

    .line 699
    return-void
.end method

.method protected switchAccount(Ljava/lang/String;)V
    .registers 8
    .parameter "accountName"

    .prologue
    const/4 v5, 0x0

    .line 789
    invoke-static {p1, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 793
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1c

    .line 794
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error, could not switch to %s because the account could not be found on the device"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_1c
    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->reinitialize(Landroid/accounts/Account;Z)V

    .line 800
    return-void
.end method
