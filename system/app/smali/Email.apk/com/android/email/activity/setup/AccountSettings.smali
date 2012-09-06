.class public Lcom/android/email/activity/setup/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;,
        Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;,
        Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;,
        Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static final SECRET_KEY_CODES:[I


# instance fields
.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mDeletingAccountId:J

.field private mGeneratedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

.field private mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestedAccountId:J

.field private mSecretKeyCodeIndex:I

.field private mShowDebugMenu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 102
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    .line 119
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    .line 121
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    .line 832
    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettings;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/email/activity/setup/AccountSettings;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->forceBack()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->forceSwitchHeader(I)V

    return-void
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .registers 4
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    const-string v1, "AccountSettings.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public static createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "accountId"
    .parameter "loginWarningAccountName"

    .prologue
    .line 138
    const-string v2, "settings"

    invoke-static {v2}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .local v1, i:Landroid/content/Intent;
    if-eqz p3, :cond_1b

    .line 142
    const-string v2, "AccountSettings.for_account"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :cond_1b
    return-object v1
.end method

.method private enableDebugMenu()V
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->invalidateHeaders()V

    .line 324
    return-void
.end method

.method private forceBack()V
    .registers 2

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 545
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 546
    return-void
.end method

.method private forceSwitchHeader(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 532
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->setSelection(I)V

    .line 535
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 536
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 537
    return-void
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_2e

    .line 414
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    .line 415
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f08016b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 416
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 417
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 418
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 421
    :cond_2e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private onAddNewAccount()V
    .registers 1

    .prologue
    .line 345
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 346
    return-void
.end method

.method private shouldShowNewAccount()Z
    .registers 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_b

    .line 332
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->hasHeaders()Z

    move-result v0

    .line 341
    :goto_a
    return v0

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/DebugFragment;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-nez v0, :cond_23

    .line 339
    const/4 v0, 0x0

    goto :goto_a

    .line 341
    :cond_23
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private updateAccounts()V
    .registers 7

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 353
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 354
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    .line 358
    :cond_27
    return-void
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 718
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->deleteAccount(J)V

    .line 722
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 723
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 724
    .local v0, prefsHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 725
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    .line 726
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V

    .line 732
    .end local v0           #prefsHeader:Landroid/preference/PreferenceActivity$Header;
    :goto_21
    return-void

    .line 730
    :cond_22
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_21
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "f"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 552
    instance-of v2, p1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v2, :cond_15

    move-object v1, p1

    .line 553
    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    .line 554
    .local v1, asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V

    .line 562
    .end local v1           #asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    :goto_f
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 565
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->invalidateOptionsMenu()V

    .line 566
    :cond_14
    return-void

    .line 555
    :cond_15
    instance-of v2, p1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_14

    move-object v0, p1

    .line 556
    check-cast v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 557
    .local v0, asbf:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_f
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_1e

    .line 299
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    .line 300
    .local v0, changed:Z
    if-eqz v0, :cond_1e

    .line 301
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->newInstanceForBack()Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    move-result-object v1

    .line 303
    .local v1, dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "UnsavedChangesDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 308
    .end local v0           #changed:Z
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    :goto_1d
    return-void

    .line 307
    :cond_1e
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_1d
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 369
    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 372
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 373
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_40

    .line 377
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v2, v0

    move v0, v1

    .line 378
    :goto_18
    if-ge v0, v2, :cond_40

    .line 379
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v3, v3, v0

    .line 380
    if-eqz v3, :cond_3d

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_3d

    .line 381
    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3d

    .line 382
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3d

    .line 384
    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 385
    iput-wide v9, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    .line 378
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 393
    :cond_40
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    if-eqz v0, :cond_63

    .line 395
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 396
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 397
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 398
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 399
    const-class v1, Lcom/android/email/activity/setup/DebugFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 400
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 401
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_63
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mGeneratedHeaders:Ljava/util/List;

    .line 406
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 8
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 279
    .local v0, result:Landroid/content/Intent;
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, title:Ljava/lang/String;
    if-nez p3, :cond_11

    if-eqz v1, :cond_11

    .line 281
    const-string v2, "AccountSettings.title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :cond_11
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, i:Landroid/content/Intent;
    if-nez p1, :cond_2f

    .line 167
    const-string v4, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 169
    new-instance v4, Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/Intent;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    .line 183
    :cond_2f
    :goto_2f
    const-string v4, "AccountSettings.enable_debug"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    .line 185
    const-string v4, "AccountSettings.title"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_42

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    :cond_42
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 193
    new-instance v4, Lcom/android/email/activity/setup/AccountSettings$1;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/setup/AccountSettings$1;-><init>(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    .line 199
    return-void

    .line 174
    .end local v3           #title:Ljava/lang/String;
    :cond_55
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    .line 175
    const-string v4, "AccountSettings.for_account"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, loginWarningAccount:Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 178
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;

    move-result-object v0

    .line 179
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "loginwarning"

    invoke-virtual {v0, v4, v5}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 243
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 218
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    .line 219
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 220
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    .line 221
    return-void
.end method

.method public onEditQuickResponses(Lcom/android/emailcommon/provider/Account;)V
    .registers 9
    .parameter

    .prologue
    .line 651
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 652
    const-string v0, "account"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 653
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08013f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 658
    :goto_1a
    return-void

    .line 655
    :catch_1b
    move-exception v0

    .line 656
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke edit quick responses."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 317
    .local v0, result:Landroid/preference/PreferenceActivity$Header;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 318
    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_1e

    .line 502
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    .line 503
    .local v0, changed:Z
    if-eqz v0, :cond_1e

    .line 504
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    move-result-object v1

    .line 506
    .local v1, dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "UnsavedChangesDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 523
    .end local v0           #changed:Z
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    :goto_1d
    return-void

    .line 512
    :cond_1e
    if-nez p2, :cond_33

    .line 513
    iget v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    .line 514
    iget v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2f

    .line 515
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->enableDebugMenu()V

    .line 522
    :cond_2f
    :goto_2f
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_1d

    .line 518
    :cond_33
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    goto :goto_2f
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .registers 9
    .parameter

    .prologue
    .line 667
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_30

    .line 669
    invoke-virtual {v0}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_30

    .line 671
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 672
    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 673
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080138

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 686
    :cond_30
    :goto_30
    return-void

    .line 676
    :cond_31
    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 677
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080138

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_30

    .line 683
    :catch_4e
    move-exception v0

    .line 684
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke store settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_24

    .line 229
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 230
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1f

    .line 231
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 232
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->enableDebugMenu()V

    .line 237
    :cond_1f
    :goto_1f
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 235
    :cond_24
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    goto :goto_1f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 266
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 268
    :goto_b
    return v0

    .line 260
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 268
    :goto_f
    const/4 v0, 0x1

    goto :goto_b

    .line 263
    :sswitch_11
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onAddNewAccount()V

    goto :goto_f

    .line 254
    nop

    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_c
        0x7f0e00dc -> :sswitch_11
    .end sparse-switch
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V
    .registers 9
    .parameter

    .prologue
    .line 695
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 696
    if-eqz v0, :cond_30

    .line 697
    invoke-virtual {v0}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_30

    .line 699
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 700
    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 701
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f08013a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 710
    :cond_30
    :goto_30
    return-void

    .line 707
    :catch_31
    move-exception v0

    .line 708
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke sender settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 211
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->shouldShowNewAccount()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 204
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V

    .line 206
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 633
    const-string v4, "account_description"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 634
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    .local v0, arr$:[Landroid/preference/PreferenceActivity$Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 635
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_22

    .line 638
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 639
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->invalidateHeaders()V

    .line 644
    .end local v0           #arr$:[Landroid/preference/PreferenceActivity$Header;
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_21
    return-void

    .line 634
    .restart local v0       #arr$:[Landroid/preference/PreferenceActivity$Header;
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method
