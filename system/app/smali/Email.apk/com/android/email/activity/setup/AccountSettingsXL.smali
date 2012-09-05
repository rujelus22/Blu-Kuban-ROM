.class public Lcom/android/email/activity/setup/AccountSettingsXL;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;,
        Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;,
        Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static final SECRET_KEY_CODES:[I

.field public static mDeleteMode:Z

.field private static mDeleteaccountId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsRotating:Z

.field public static mPrevPreference:Z


# instance fields
.field private mAccountDeleteItem:[J

.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private final mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

.field private mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mCurrentHeaderPosition:I

.field private mDefaultAccount:Ljava/lang/Long;

.field private mDefaultAccountId:J

.field private mDeleteAccountPressed:Z

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

.field private mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

.field private mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestedAccountId:J

.field private mResumed:Z

.field private mSecretKeyCodeIndex:I

.field private mShowDebugMenu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 126
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    .line 169
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 178
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    .line 182
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    return-void

    .line 126
    :array_10
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 131
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 146
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    .line 161
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    .line 176
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 189
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    .line 191
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    .line 1600
    return-void
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceBack()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsXL;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceSwitchHeader(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsXL;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsXL;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsXL;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsXL;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/setup/AccountSettingsXL;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    return-object p1
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const-string v1, "AccountSettingsXL.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public static actionSettings_withdeleteoption(Landroid/app/Activity;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const-string v1, "AccountSettingsXL.for_deleteoption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public static createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v1, "AccountSettingsXL.for_account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    return-object v0
.end method

.method private enableDebugMenu()V
    .registers 2

    .prologue
    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    .line 636
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 637
    return-void
.end method

.method private forceBack()V
    .registers 2

    .prologue
    .line 1126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1127
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    .line 1128
    return-void
.end method

.method private forceSwitchHeader(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1111
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentHeaderPosition:I

    .line 1113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->setSelection(I)V

    .line 1116
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1117
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1118
    return-void
.end method

.method private getAddedAccountCategory()Landroid/preference/PreferenceActivity$Header;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 813
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_2c

    .line 814
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    .line 815
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f0805fc

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 816
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 817
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 818
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 820
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 822
    :cond_2c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 5

    .prologue
    const v3, 0x7f0805da

    .line 799
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_38

    .line 800
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    .line 801
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 802
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 803
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 804
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 805
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 808
    :cond_38
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private onAddNewAccount()V
    .registers 1

    .prologue
    .line 661
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 662
    return-void
.end method

.method private onDeleteAccount()V
    .registers 4

    .prologue
    const v2, 0x7f080058

    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsXL$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 722
    return-void
.end method

.method private onDeleteMode()V
    .registers 5

    .prologue
    .line 667
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[toma] mRequestedAccountId :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[toma] mDefaultAccountId :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 671
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 673
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 674
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 675
    return-void
.end method

.method private onDeleteModeCancel()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 678
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 679
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 680
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 681
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 682
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 683
    return-void
.end method

.method private shouldShowNewAccount()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 644
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-nez v1, :cond_e

    .line 645
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v1

    if-nez v1, :cond_24

    .line 657
    :cond_d
    :goto_d
    return v0

    .line 652
    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/DebugFragment;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v1, :cond_d

    .line 657
    :cond_24
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 1349
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 1353
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->deleteAccount(J)V

    .line 1358
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1359
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 1360
    .local v0, prefsHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1361
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    .line 1362
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1370
    .end local v0           #prefsHeader:Landroid/preference/PreferenceActivity$Header;
    :goto_2a
    return-void

    .line 1368
    :cond_2b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    goto :goto_2a
.end method

.method public deleteAccountCallbackResult(Landroid/os/Bundle;J)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f080287

    const/4 v7, 0x0

    .line 1467
    const-string v0, "Email"

    const-string v1, "deleteAccountCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    sput-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 1470
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1481
    if-eqz p1, :cond_aa

    .line 1482
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 1484
    :goto_1d
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1490
    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4e

    move-result v1

    .line 1492
    if-eqz v0, :cond_35

    .line 1493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1497
    :cond_35
    if-nez v1, :cond_55

    .line 1498
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 1526
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1528
    if-nez p1, :cond_6e

    .line 1529
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1544
    :goto_48
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1545
    return-void

    .line 1492
    :catchall_4e
    move-exception v1

    if-eqz v0, :cond_54

    .line 1493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1492
    :cond_54
    throw v1

    .line 1499
    :cond_55
    if-nez v6, :cond_3a

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 1510
    if-eqz p1, :cond_3a

    .line 1511
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto :goto_3a

    .line 1532
    :cond_6e
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1533
    const-string v1, "status_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1534
    if-eqz v0, :cond_a2

    .line 1535
    const v0, 0x7f0805a9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_48

    .line 1539
    :cond_a2
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_48

    :cond_aa
    move v6, v7

    goto/16 :goto_1d
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1906
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_88

    .line 1908
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_88

    .line 1910
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1912
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1914
    const-string v1, "ListView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-eqz v0, :cond_88

    .line 1916
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1918
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 1924
    const v0, 0x7f100004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1926
    const v0, 0x7f100261

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1928
    const v3, 0x7f100260

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1931
    if-eqz v1, :cond_88

    .line 1933
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1934
    iget-object v4, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1935
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v2, v5, :cond_8d

    .line 1936
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1937
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1948
    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1955
    :cond_88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1940
    :cond_8d
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1941
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_85
.end method

.method public onAttach(Landroid/app/Fragment;)V
    .registers 5
    .parameter "f"

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1136
    instance-of v2, p1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v2, :cond_1c

    move-object v1, p1

    .line 1137
    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    .line 1138
    .local v1, asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V

    .line 1145
    .end local v1           #asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    :cond_e
    :goto_e
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1146
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1148
    :cond_1b
    return-void

    .line 1139
    :cond_1c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_e

    .line 1140
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 1141
    .local v0, asbf:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_e
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v1, :cond_6

    .line 613
    :cond_6
    :try_start_6
    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 614
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteModeCancel()V

    .line 618
    :goto_e
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 622
    :goto_11
    return-void

    .line 616
    :cond_12
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_e

    .line 619
    :catch_16
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Email"

    const-string v2, "Error in onBackPressed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
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

    .line 746
    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 749
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 751
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAddedAccountCategory()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_47

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v2, v0

    move v0, v1

    .line 758
    :goto_1f
    if-ge v0, v2, :cond_47

    .line 759
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v3, v3, v0

    .line 760
    if-eqz v3, :cond_44

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_44

    .line 761
    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_44

    .line 762
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_44

    .line 769
    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 771
    iput-wide v9, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    .line 758
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 779
    :cond_47
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    if-eqz v0, :cond_6a

    .line 781
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 782
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 783
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 784
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 785
    const-class v1, Lcom/android/email/activity/setup/DebugFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 786
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 787
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_6a
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    .line 792
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 8
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 578
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 584
    .local v0, result:Landroid/content/Intent;
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, title:Ljava/lang/String;
    if-nez p3, :cond_11

    if-eqz v1, :cond_11

    .line 586
    const-string v2, "AccountSettings.title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    :cond_11
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 829
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 830
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->closeOptionsMenu()V

    .line 831
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->openOptionsMenu()V

    .line 832
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->closeOptionsMenu()V

    .line 833
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "intent.seven.action.EMAIL_ACCOUNT_PREFERENCE"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 261
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 333
    :goto_25
    return-void

    .line 267
    :cond_26
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 270
    .local v1, i:Landroid/content/Intent;
    if-nez p1, :cond_4c

    .line 274
    const-string v3, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 277
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-direct {v3, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    .line 294
    :cond_4c
    :goto_4c
    const-string v3, "AccountSettingsXL.enable_debug"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    .line 296
    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    .line 297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    .line 299
    const-string v3, "AccountSettings.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_6a

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    :cond_6a
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 308
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 314
    .local v0, actionBar:Landroid/app/ActionBar;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 315
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 316
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 319
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    .line 320
    new-instance v3, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;

    invoke-direct {v5, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    invoke-direct {v3, v4, v5}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 322
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_25

    .line 279
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #title:Ljava/lang/String;
    :cond_a5
    const-string v3, "intent.seven.action.EMAIL_ACCOUNT_PREFERENCE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 281
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-direct {v3, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    goto :goto_4c

    .line 286
    :cond_c3
    const-string v3, "AccountSettingsXL.account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    .line 287
    const-string v3, "AccountSettingsXL.for_deleteoption"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    goto/16 :goto_4c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 465
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 467
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v0, v2, :cond_13

    .line 468
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 473
    :goto_12
    return v2

    .line 470
    :cond_13
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_12
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 425
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 426
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 428
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    .line 429
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 434
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 444
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 14
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1041
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v7, v7, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v7, :cond_38

    .line 1042
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v7, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    .line 1043
    .local v2, changed:Z
    if-eqz v2, :cond_38

    .line 1047
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1048
    .local v4, fm:Landroid/app/FragmentManager;
    const-string v7, "UnsavedChangesDialogFragment"

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    .line 1049
    .local v6, prevUCDF:Landroid/app/Fragment;
    const-string v7, "AccountCheckSettingsFragment"

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 1051
    .local v5, prevACSF:Landroid/app/Fragment;
    if-nez v6, :cond_37

    if-nez v5, :cond_37

    .line 1053
    :try_start_26
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    move-result-object v3

    .line 1055
    .local v3, dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "UnsavedChangesDialogFragment"

    invoke-virtual {v7, v3, v8}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_37} :catch_8c

    .line 1103
    .end local v2           #changed:Z
    .end local v3           #dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    .end local v4           #fm:Landroid/app/FragmentManager;
    .end local v5           #prevACSF:Landroid/app/Fragment;
    .end local v6           #prevUCDF:Landroid/app/Fragment;
    :cond_37
    :goto_37
    return-void

    .line 1064
    :cond_38
    sget-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v7, v10, :cond_59

    .line 1065
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1066
    .local v0, accountid:J
    sget-object v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 1067
    sget-object v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1071
    :goto_53
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1072
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1075
    .end local v0           #accountid:J
    :cond_59
    if-nez p2, :cond_86

    .line 1076
    sput-boolean v10, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    .line 1082
    :goto_5d
    if-nez p2, :cond_89

    sget-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-nez v7, :cond_89

    .line 1083
    iget v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    .line 1084
    iget v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_72

    .line 1085
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    .line 1092
    :cond_72
    :goto_72
    iget-wide v7, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iput-wide v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    .line 1093
    iput p2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentHeaderPosition:I

    .line 1102
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_37

    .line 1069
    .restart local v0       #accountid:J
    :cond_7c
    sget-object v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1078
    .end local v0           #accountid:J
    :cond_86
    sput-boolean v9, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    goto :goto_5d

    .line 1088
    :cond_89
    iput v9, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    goto :goto_72

    .line 1056
    .restart local v2       #changed:Z
    .restart local v4       #fm:Landroid/app/FragmentManager;
    .restart local v5       #prevACSF:Landroid/app/Fragment;
    .restart local v6       #prevUCDF:Landroid/app/Fragment;
    :catch_8c
    move-exception v7

    goto :goto_37
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter

    .prologue
    .line 1246
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_35

    .line 1248
    invoke-virtual {v0}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 1249
    if-eqz v0, :cond_35

    .line 1250
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1251
    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1252
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080137

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1272
    :cond_35
    :goto_35
    return-void

    .line 1255
    :cond_36
    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1256
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f08019b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_35

    .line 1269
    :catch_53
    move-exception v0

    .line 1270
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke store settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method public onIncomingSettingsForSeven(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1322
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1323
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080137

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1325
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_24

    .line 452
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 453
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1f

    .line 454
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 455
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    .line 460
    :cond_1f
    :goto_1f
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 458
    :cond_24
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    goto :goto_1f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 525
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_4c

    .line 570
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 572
    :cond_d
    :goto_d
    return v1

    .line 534
    :sswitch_e
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 535
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 536
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 537
    :cond_29
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    goto :goto_d

    .line 540
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_2d
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAddNewAccount()V

    goto :goto_d

    .line 544
    :sswitch_31
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteMode()V

    .line 545
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_d

    .line 546
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_d

    .line 557
    :sswitch_3e
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    if-nez v2, :cond_d

    .line 558
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 559
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteAccount()V

    goto :goto_d

    .line 565
    :sswitch_48
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteModeCancel()V

    goto :goto_d

    .line 525
    :sswitch_data_4c
    .sparse-switch
        0x102002c -> :sswitch_e
        0x7f1002d7 -> :sswitch_31
        0x7f1002d9 -> :sswitch_2d
        0x7f1002dd -> :sswitch_3e
        0x7f1002de -> :sswitch_48
    .end sparse-switch
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter

    .prologue
    .line 1279
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_34

    .line 1281
    invoke-virtual {v0}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 1282
    if-eqz v0, :cond_34

    .line 1283
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1284
    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1285
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080138

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 1294
    :cond_34
    :goto_34
    return-void

    .line 1291
    :catch_35
    move-exception v0

    .line 1292
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke sender settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 418
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    .line 420
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x5

    const v5, 0x7f1002dd

    const/4 v4, 0x1

    .line 478
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 481
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 483
    .local v2, mOrientation:I
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 484
    .local v1, deleteConfirmItem:Landroid/view/MenuItem;
    const v3, 0x7f1002de

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 486
    .local v0, cancelItem:Landroid/view/MenuItem;
    if-ne v2, v4, :cond_49

    .line 487
    if-eqz v1, :cond_29

    .line 488
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 489
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 491
    :cond_29
    if-eqz v0, :cond_31

    .line 492
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 493
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 513
    :cond_31
    :goto_31
    sget-boolean v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v3, v4, :cond_44

    .line 514
    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_60

    .line 515
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 520
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->shouldShowNewAccount()Z

    move-result v3

    return v3

    .line 499
    :cond_49
    if-eqz v1, :cond_54

    .line 500
    const v3, 0x7f02022c

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 501
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    :cond_54
    if-eqz v0, :cond_31

    .line 506
    const v3, 0x7f02021f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 507
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_31

    .line 517
    :cond_60
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_44
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 363
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    .line 365
    const-string v4, "com.android.email.activity.AccountSettingXL.deleteMode"

    sget-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 367
    const-string v4, "com.android.email.activity.AccountSettingXL.ACCOUNTDELET_ITEM "

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    .line 368
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 369
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    .local v1, arr$:[J
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_21
    if-ge v2, v3, :cond_31

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 370
    .local v0, AccountId:Ljava/lang/Long;
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 373
    .end local v0           #AccountId:Ljava/lang/Long;
    :cond_31
    const-string v4, "com.android.email.activity.AccountSettingXL.DEFAULT_ACCOUNT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    .line 374
    return-void
.end method

.method public onResume()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 384
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 390
    .local v7, count:I
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_3d

    move-result v7

    .line 392
    if-eqz v6, :cond_1d

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_1d
    if-nez v7, :cond_22

    .line 398
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 403
    :cond_22
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    .line 406
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 412
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 414
    :cond_3c
    return-void

    .line 392
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_43
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 10
    .parameter "outState"

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 339
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    .line 341
    const-string v5, "com.android.email.activity.AccountSettingXL.deleteMode"

    sget-boolean v6, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    sget-object v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 344
    .local v1, cnt:I
    const/4 v2, 0x0

    .line 345
    .local v2, i:I
    new-array v5, v1, [J

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    .line 346
    sget-object v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 347
    .local v0, AccountId:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1e

    .line 349
    .end local v0           #AccountId:Ljava/lang/Long;
    :cond_36
    const-string v5, "com.android.email.activity.AccountSettingXL.ACCOUNTDELET_ITEM "

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 351
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    if-nez v5, :cond_4f

    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    .line 354
    :cond_4f
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    if-eqz v5, :cond_5e

    .line 355
    const-string v5, "com.android.email.activity.AccountSettingXL.DEFAULT_ACCOUNT"

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 356
    :cond_5e
    return-void
.end method

.method public onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter

    .prologue
    const v3, 0x7f08045b

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1297
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    .line 1299
    :goto_10
    if-nez v0, :cond_21

    .line 1300
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1308
    :goto_1e
    return-void

    :cond_1f
    move v0, v6

    .line 1297
    goto :goto_10

    .line 1303
    :cond_21
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1304
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3ec

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1e
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter "adapter"

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    if-nez v1, :cond_20

    .line 1890
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    .line 1894
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1895
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1894
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1901
    .end local v0           #i:I
    :cond_20
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1902
    return-void
.end method

.method public updateAccounts()V
    .registers 6

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 730
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 731
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    .line 734
    :cond_25
    return-void
.end method
