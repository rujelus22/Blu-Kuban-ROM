.class public Lcom/android/email/activity/setup/AccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountEmail:Ljava/lang/String;

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mDefaultAccountId:J

.field private mLoadAccountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private final mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSaveOnExit:Z

.field private mStarted:Z

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncEmail:Landroid/preference/CheckBoxPreference;

.field private mSyncWindow:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 114
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 619
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 694
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->finishDeleteAccount()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method public static buildArguments(JLjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "accountId"
    .parameter "email"

    .prologue
    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "AccountSettingsFragment.AccountId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    const-string v1, "AccountSettingsFragment.Email"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method private finishDeleteAccount()V
    .registers 3

    .prologue
    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 748
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->deleteAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 749
    return-void
.end method

.method public static getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "args"

    .prologue
    .line 158
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "AccountSettingsFragment.Email"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private loadSettings()V
    .registers 27

    .prologue
    .line 359
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    .line 361
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 363
    const-string v20, "account_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    const-string v20, "account_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, senderName:Ljava/lang/String;
    if-nez v11, :cond_7a

    const-string v11, ""

    .line 385
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 399
    const-string v20, "account_signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/Account;->getSignature()Ljava/lang/String;

    move-result-object v15

    .line 401
    .local v15, signature:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getSignature()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 418
    const-string v20, "account_check_frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, protocol:Ljava/lang/String;
    const-string v20, "eas"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12d

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f060002

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f060003

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 427
    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getSyncInterval()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 440
    const-string v20, "account_quick_responses"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 451
    const-string v20, "data_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 454
    .local v3, dataUsageCategory:Landroid/preference/PreferenceCategory;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 455
    const-string v20, "eas"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_224

    .line 456
    new-instance v20, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f080101

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f060004

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f060005

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getSyncLookback()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 479
    :cond_224
    const-string v20, "account_background_attachments"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    .line 481
    const-string v20, "pop3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4db

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :goto_25b
    const-string v20, "account_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    move-wide/from16 v24, v0

    cmp-long v20, v22, v24

    if-nez v20, :cond_510

    const/16 v20, 0x1

    :goto_28b
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 493
    const-string v20, "account_notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_514

    const/16 v20, 0x1

    :goto_2c9
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    const-string v20, "account_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/RingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 503
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "account_ringtone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/Account;->getRingtone()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    const-string v20, "account_settings_vibrate_when"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "vibrator"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Vibrator;

    .line 508
    .local v19, vibrator:Landroid/os/Vibrator;
    invoke-virtual/range {v19 .. v19}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v20

    if-eqz v20, :cond_52a

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_518

    const/16 v16, 0x1

    .line 511
    .local v16, vibrateAlways:Z
    :goto_35b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x40

    if-eqz v20, :cond_51c

    const/16 v18, 0x1

    .line 513
    .local v18, vibrateWhenSilent:Z
    :goto_36b
    if-eqz v16, :cond_520

    const-string v17, "always"

    .line 517
    .local v17, vibrateSetting:Ljava/lang/String;
    :goto_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 521
    .local v4, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v21

    aget-object v21, v21, v4

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 543
    .end local v4           #index:I
    .end local v16           #vibrateAlways:Z
    .end local v17           #vibrateSetting:Ljava/lang/String;
    .end local v18           #vibrateWhenSilent:Z
    :goto_3b1
    const-string v20, "incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    new-instance v21, Lcom/android/email/activity/setup/AccountSettingsFragment$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 553
    const-string v20, "outgoing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 554
    .local v7, prefOutgoing:Landroid/preference/Preference;
    const/4 v14, 0x1

    .line 556
    .local v14, showOutgoing:Z
    :try_start_3d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v10

    .line 557
    .local v10, sender:Lcom/android/email/mail/Sender;
    if-eqz v10, :cond_3eb

    .line 558
    invoke-virtual {v10}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_3e7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3d2 .. :try_end_3e7} :catch_57a

    move-result-object v13

    .line 559
    .local v13, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v13, :cond_543

    const/4 v14, 0x1

    .line 564
    .end local v10           #sender:Lcom/android/email/mail/Sender;
    .end local v13           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_3eb
    :goto_3eb
    if-eqz v14, :cond_546

    .line 565
    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 579
    :goto_3fb
    const-string v20, "account_sync_contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 580
    const-string v20, "account_sync_calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 581
    const-string v20, "account_sync_email"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "eas"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_557

    .line 583
    new-instance v2, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.android.exchange"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .local v2, acct:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const-string v21, "com.android.contacts"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const-string v21, "com.android.calendar"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const-string v21, "com.android.email.provider"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 601
    .end local v2           #acct:Landroid/accounts/Account;
    :goto_4c2
    const-string v20, "delete_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 602
    .local v6, prefDeleteAccount:Landroid/preference/Preference;
    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 613
    return-void

    .line 484
    .end local v6           #prefDeleteAccount:Landroid/preference/Preference;
    .end local v7           #prefOutgoing:Landroid/preference/Preference;
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    .end local v14           #showOutgoing:Z
    .end local v19           #vibrator:Landroid/os/Vibrator;
    :cond_4db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_50d

    const/16 v20, 0x1

    :goto_4f5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_25b

    .line 484
    :cond_50d
    const/16 v20, 0x0

    goto :goto_4f5

    .line 490
    :cond_510
    const/16 v20, 0x0

    goto/16 :goto_28b

    .line 494
    :cond_514
    const/16 v20, 0x0

    goto/16 :goto_2c9

    .line 510
    .restart local v8       #prefs:Landroid/content/SharedPreferences;
    .restart local v19       #vibrator:Landroid/os/Vibrator;
    :cond_518
    const/16 v16, 0x0

    goto/16 :goto_35b

    .line 511
    .restart local v16       #vibrateAlways:Z
    :cond_51c
    const/16 v18, 0x0

    goto/16 :goto_36b

    .line 513
    .restart local v18       #vibrateWhenSilent:Z
    :cond_520
    if-eqz v18, :cond_526

    const-string v17, "silent"

    goto/16 :goto_36f

    :cond_526
    const-string v17, "never"

    goto/16 :goto_36f

    .line 538
    .end local v16           #vibrateAlways:Z
    .end local v18           #vibrateWhenSilent:Z
    :cond_52a
    const-string v20, "account_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 540
    .local v5, notificationsCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3b1

    .line 559
    .end local v5           #notificationsCategory:Landroid/preference/PreferenceCategory;
    .restart local v7       #prefOutgoing:Landroid/preference/Preference;
    .restart local v10       #sender:Lcom/android/email/mail/Sender;
    .restart local v13       #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local v14       #showOutgoing:Z
    :cond_543
    const/4 v14, 0x0

    goto/16 :goto_3eb

    .line 574
    .end local v10           #sender:Lcom/android/email/mail/Sender;
    .end local v13           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_546
    const-string v20, "account_servers"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 576
    .local v12, serverCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v12, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3fb

    .line 595
    .end local v12           #serverCategory:Landroid/preference/PreferenceCategory;
    :cond_557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4c2

    .line 561
    :catch_57a
    move-exception v20

    goto/16 :goto_3eb
.end method

.method private onPreferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 633
    return-void
.end method

.method private saveSettings()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 641
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v4

    and-int/lit16 v2, v4, -0x144

    .line 646
    .local v2, newFlags:I
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_ec

    const/16 v4, 0x100

    :goto_13
    or-int/2addr v2, v4

    .line 648
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/emailcommon/provider/Account;->setDefaultAccount(Z)V

    .line 650
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 653
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/emailcommon/provider/Account;->setSignature(Ljava/lang/String;)V

    .line 654
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_51

    const/4 v5, 0x1

    :cond_51
    or-int/2addr v2, v5

    .line 655
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 656
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v4, :cond_74

    .line 657
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/Account;->setSyncLookback(I)V

    .line 659
    :cond_74
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "always"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 660
    or-int/lit8 v2, v2, 0x2

    .line 664
    :cond_84
    :goto_84
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v4}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 665
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v5, "account_ringtone"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/Account;->setRingtone(Ljava/lang/String;)V

    .line 666
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v4, v2}, Lcom/android/emailcommon/provider/Account;->setFlags(I)V

    .line 668
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 669
    new-instance v0, Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .local v0, acct:Landroid/accounts/Account;
    const-string v4, "com.android.contacts"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 673
    const-string v4, "com.android.calendar"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 675
    const-string v4, "com.android.email.provider"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 684
    .end local v0           #acct:Landroid/accounts/Account;
    :cond_d9
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/Account;)Landroid/content/ContentValues;

    move-result-object v1

    .line 685
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 688
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 689
    return-void

    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_ec
    move v4, v5

    .line 646
    goto/16 :goto_13

    .line 661
    :cond_ef
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "silent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 662
    or-int/lit8 v2, v2, 0x40

    goto :goto_84
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 198
    const-string v0, "Email"

    const-string v1, "AccountSettingsFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 164
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 173
    sget-boolean v3, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_f

    .line 174
    const-string v3, "Email"

    const-string v4, "AccountSettingsFragment onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 184
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_3b

    .line 185
    const-string v3, "AccountSettingsFragment.AccountId"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 186
    .local v0, accountId:J
    const-string v3, "AccountSettingsFragment.Email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountEmail:Ljava/lang/String;

    .line 187
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3b

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v3, :cond_3b

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startLoadingAccount(J)V

    .line 192
    .end local v0           #accountId:J
    :cond_3b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 193
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 282
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 283
    const-string v0, "Email"

    const-string v1, "AccountSettingsFragment onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_f
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 256
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 257
    const-string v0, "Email"

    const-string v1, "AccountSettingsFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_f
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 260
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    if-eqz v0, :cond_19

    .line 261
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    .line 263
    :cond_19
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 227
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 228
    const-string v1, "Email"

    const-string v2, "AccountSettingsFragment onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_10
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 232
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    if-eqz v1, :cond_52

    .line 236
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 238
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 242
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 243
    .local v0, refreshedAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v1, :cond_53

    .line 245
    :cond_4b
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 246
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 252
    .end local v0           #refreshedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_52
    :goto_52
    return-void

    .line 249
    .restart local v0       #refreshedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_53
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 250
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    goto :goto_52
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 293
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 294
    const-string v0, "Email"

    const-string v1, "AccountSettingsFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 209
    const-string v0, "Email"

    const-string v1, "AccountSettingsFragment onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_f
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 215
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v0, :cond_20

    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    .line 218
    :cond_20
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 271
    const-string v0, "Email"

    const-string v1, "AccountSettingsFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_f
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 275
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 303
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 304
    return-void
.end method

.method public startLoadingAccount(J)V
    .registers 8
    .parameter "accountId"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 311
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 313
    return-void
.end method
