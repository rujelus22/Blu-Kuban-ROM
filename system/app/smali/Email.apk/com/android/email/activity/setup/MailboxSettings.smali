.class public Lcom/android/email/activity/setup/MailboxSettings;
.super Landroid/preference/PreferenceActivity;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mNeedsSave:Z

.field private final mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSyncIntervalPref:Landroid/preference/ListPreference;

.field private mSyncLookbackPref:Landroid/preference/ListPreference;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 256
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/MailboxSettings$1;-><init>(Lcom/android/email/activity/setup/MailboxSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/MailboxSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/MailboxSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/MailboxSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/MailboxSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updateObjects()V

    return-void
.end method

.method private enablePreferences(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method private getSyncInterval()I
    .registers 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_12

    .line 227
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 237
    .local v0, syncInterval:I
    :goto_a
    const/4 v1, -0x3

    if-eq v0, v1, :cond_10

    const/4 v1, -0x4

    if-ne v0, v1, :cond_11

    .line 239
    :cond_10
    const/4 v0, -0x2

    .line 241
    :cond_11
    return v0

    .line 229
    .end local v0           #syncInterval:I
    :cond_12
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-nez v1, :cond_1a

    .line 231
    const/4 v0, -0x1

    .restart local v0       #syncInterval:I
    goto :goto_a

    .line 233
    .end local v0           #syncInterval:I
    :cond_1a
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .restart local v0       #syncInterval:I
    goto :goto_a
.end method

.method private getSyncLookback()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v0, :cond_b

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 252
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_a
.end method

.method private onDataLoaded()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 185
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 190
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v2, v3}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, mailboxName:Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 192
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    const v2, 0x7f080158

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 200
    :goto_28
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_3e

    .line 201
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 202
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 206
    :cond_3e
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncInterval()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    .line 212
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 214
    return-void

    .line 195
    :cond_5f
    const v2, 0x7f080159

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/MailboxSettings;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method

.method private saveToDatabase()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-boolean v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    if-nez v0, :cond_6

    .line 344
    :goto_5
    return-void

    .line 306
    :cond_6
    const-string v0, "Email"

    const-string v1, "Saving mailbox settings..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 312
    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 313
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 314
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 316
    .local v5, context:Landroid/content/Context;
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/MailboxSettings$2;-><init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/MailboxSettings$2;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_5
.end method

.method public static final start(Landroid/app/Activity;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private updateObjects()V
    .registers 6

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, syncInterval:I
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    .local v1, syncLookback:I
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_42

    .line 283
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_42
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_51

    .line 286
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v0, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 287
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v1, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 292
    :goto_50
    return-void

    .line 289
    :cond_51
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v0, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 290
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_50
.end method

.method private updatePreferenceSummary()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x4

    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "MAILBOX_ID"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 90
    .local v1, mailboxId:J
    cmp-long v3, v1, v6

    if-nez v3, :cond_18

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    .line 122
    :cond_17
    :goto_17
    return-void

    .line 95
    :cond_18
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->addPreferencesFromResource(I)V

    .line 97
    const-string v3, "check_frequency"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    .line 98
    const-string v3, "sync_window"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    .line 100
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 106
    if-eqz p1, :cond_62

    .line 107
    const-string v3, "MailboxSettings.account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Account;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 108
    const-string v3, "MailboxSettings.mailbox"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Mailbox;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 109
    const-string v3, "MailboxSettings.needsSave"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    .line 111
    :cond_62
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v3, :cond_7b

    .line 112
    new-instance v4, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;-><init>(Lcom/android/email/activity/setup/MailboxSettings;J)V

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 118
    :goto_71
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 119
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_17

    .line 120
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_17

    .line 114
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_7b
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    goto :goto_71
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 143
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_e

    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V

    .line 146
    :cond_e
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onBackPressed()V

    .line 350
    const/4 v0, 0x1

    .line 352
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "MailboxSettings.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    const-string v0, "MailboxSettings.mailbox"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    const-string v0, "MailboxSettings.needsSave"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method
