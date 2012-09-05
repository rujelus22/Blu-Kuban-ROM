.class public Lcom/android/email/activity/setup/AccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    }
.end annotation


# static fields
.field public static Category:Landroid/preference/PreferenceScreen;


# instance fields
.field private final CALENDAR_SYNC_WINDOW:I

.field private final EMAIL_SYNC_WINDOW:I

.field private final EMAIL_TRUNC_SIZE:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_NETWORK:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountCcBcc:Landroid/preference/ListPreference;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountEmail:Ljava/lang/String;

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNameTextWatcher:Landroid/text/TextWatcher;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountPassword:Landroid/preference/EditTextPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountTextPreview:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mAddSignature:Landroid/preference/CheckBoxPreference;

.field private mAmountToSynchronize:Landroid/preference/ListPreference;

.field private mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

.field private mAutoRetryTimes:Landroid/preference/ListPreference;

.field private mCalendarSyncWindow:Landroid/preference/ListPreference;

.field private mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mConflictResolution:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationMode:Landroid/preference/CheckBoxPreference;

.field private mDefaultAccountId:J

.field private mDefaultAccount_message:Landroid/widget/Toast;

.field private mEmailRetrieveSize:Landroid/preference/ListPreference;

.field private mEmailSize:Landroid/preference/ListPreference;

.field private mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

.field private mForwardWithFiles:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAccountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMessageFormat:Landroid/preference/ListPreference;

.field private mPassword:Ljava/lang/String;

.field private mPostEmptyTrash_0:Landroid/app/AlertDialog;

.field private mPostEmptyTrash_1:Landroid/app/AlertDialog;

.field private mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneUri:Landroid/net/Uri;

.field private mSaveOnExit:Z

.field private mSevenAccount:Z

.field private mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

.field private mSevenSyncContact:Landroid/preference/PreferenceScreen;

.field private mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

.field private mSevenWhileLowPower:Landroid/preference/ListPreference;

.field private mSevenWhileRoaming:Landroid/preference/ListPreference;

.field private mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

.field private mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

.field private mStarted:Z

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncEmail:Landroid/preference/CheckBoxPreference;

.field private mSyncSMS:Landroid/preference/CheckBoxPreference;

.field private mSyncSchedule:Landroid/preference/Preference;

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncTasks:Landroid/preference/CheckBoxPreference;

.field private mSyncWindow:Landroid/preference/ListPreference;

.field policySet:Lcom/android/emailcommon/service/PolicySet;

.field securityPolicy:Lcom/android/email/SecurityPolicy;

.field syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 220
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    .line 305
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailRetrieveSize:Landroid/preference/ListPreference;

    .line 388
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 398
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->EMAIL_SYNC_WINDOW:I

    .line 400
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->EMAIL_TRUNC_SIZE:I

    .line 402
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->CALENDAR_SYNC_WINDOW:I

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_STATUS_COMPLETE:I

    .line 417
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_STATUS:I

    .line 419
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 421
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_PROCESSING:I

    .line 423
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_GET_ERROR:I

    .line 425
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_SERVER_CONNECT:I

    .line 427
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_RESPONSE_PARSE:I

    .line 429
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_UNKNOWN_ERROR:I

    .line 431
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_NETWORK:I

    .line 447
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    .line 498
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 499
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 1118
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 2305
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    .line 2556
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$42;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$42;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNameTextWatcher:Landroid/text/TextWatcher;

    .line 2600
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$43;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 2634
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$44;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$44;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 3291
    return-void
.end method

.method private IsEAS()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2578
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2580
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_6

    .line 2592
    :cond_5
    :goto_5
    return v3

    .line 2583
    :cond_6
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 2587
    .local v1, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v1, :cond_5

    .line 2590
    iget-object v2, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2592
    .local v2, scheme:Ljava/lang/String;
    const-string v3, "eas"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOffice()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/setup/AccountSettingsFragment;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->convertEmailSizeToInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->changeSmsSettings(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->showToastForAllPremiumAccounts()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onSyncSchedule()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountPassword:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccount_message:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/digc/seven/Z7MailHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->finishDeleteAccount()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    return-void
.end method

.method private addSncEmailSizePreference()V
    .registers 4

    .prologue
    .line 2425
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncEmailSizePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    const-string v0, "account_email_size"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    .line 2429
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2431
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2433
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2434
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2435
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2437
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$39;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$39;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2447
    return-void
.end method

.method private addSncMessageFormatPreference()V
    .registers 4

    .prologue
    .line 2401
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncMessageFormatPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    const-string v0, "account_message_format"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    .line 2403
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2405
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2407
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMessageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2408
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2409
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$38;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$38;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2422
    return-void
.end method

.method private addSncSyncSchedulePreference()V
    .registers 3

    .prologue
    .line 2376
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncSyncSchedulePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const-string v0, "account_sync_schedule"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSchedule:Landroid/preference/Preference;

    .line 2378
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2379
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSchedule:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$37;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$37;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2386
    return-void
.end method

.method private addSncSyncWindowPreference()V
    .registers 5

    .prologue
    .line 2343
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncSyncWindowPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const-string v0, "email_window_size"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 2347
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2349
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2352
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    const v3, 0x7f0801a4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 2353
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2354
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2355
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window window window ...account settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2360
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$36;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$36;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2373
    return-void
.end method

.method public static buildArguments(JLjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "accountId"
    .parameter "email"

    .prologue
    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "AccountSettingsFragment.AccountId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 588
    const-string v1, "AccountSettingsFragment.Email"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-object v0
.end method

.method private changeSmsSettings(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3349
    if-eqz p1, :cond_76

    .line 3350
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 3357
    :goto_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3358
    const-string v1, "flags"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3359
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3360
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3363
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->changeSmsSettings(J)V

    .line 3366
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3367
    if-eqz v0, :cond_75

    .line 3368
    if-eqz p1, :cond_7f

    .line 3369
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 3374
    :goto_52
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3375
    const-string v2, "syncInterval"

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3376
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3378
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3411
    :cond_75
    return-void

    .line 3352
    :cond_76
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_b

    .line 3371
    :cond_7f
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_52
.end method

.method private convertEmailSizeToInt(I)I
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x5000

    const/16 v4, 0x2800

    const/16 v3, 0x1400

    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 2688
    mul-int/lit16 v0, p1, 0x400

    .line 2691
    if-nez v0, :cond_11

    .line 2692
    const/16 v0, 0x9

    .line 2709
    :goto_10
    return v0

    .line 2694
    :cond_11
    if-lez v0, :cond_17

    if-ge v0, v1, :cond_17

    .line 2695
    const/4 v0, 0x1

    goto :goto_10

    .line 2696
    :cond_17
    if-lt v0, v1, :cond_1d

    if-ge v0, v2, :cond_1d

    .line 2697
    const/4 v0, 0x2

    goto :goto_10

    .line 2698
    :cond_1d
    if-lt v0, v2, :cond_23

    if-ge v0, v3, :cond_23

    .line 2699
    const/4 v0, 0x3

    goto :goto_10

    .line 2700
    :cond_23
    if-lt v0, v3, :cond_29

    if-ge v0, v4, :cond_29

    .line 2701
    const/4 v0, 0x4

    goto :goto_10

    .line 2702
    :cond_29
    if-lt v0, v4, :cond_2f

    if-ge v0, v5, :cond_2f

    .line 2703
    const/4 v0, 0x5

    goto :goto_10

    .line 2704
    :cond_2f
    if-lt v0, v5, :cond_38

    const v1, 0xc800

    if-ge v0, v1, :cond_38

    .line 2705
    const/4 v0, 0x6

    goto :goto_10

    .line 2706
    :cond_38
    const v1, 0xc800

    if-lt v0, v1, :cond_44

    const v1, 0x19000

    if-ge v0, v1, :cond_44

    .line 2707
    const/4 v0, 0x7

    goto :goto_10

    .line 2709
    :cond_44
    const/16 v0, 0x8

    goto :goto_10
.end method

.method private finishDeleteAccount()V
    .registers 3

    .prologue
    .line 3342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 3343
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3344
    return-void
.end method

.method private getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2750
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f0803dc

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x7f0803dd

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f0803de

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0803df

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const v3, 0x7f0803e0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2758
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2760
    if-le p1, v4, :cond_54

    const/16 v3, 0x8

    if-ge p1, v3, :cond_54

    .line 2761
    add-int/lit8 v3, p1, -0x3

    .line 2763
    :goto_42
    if-ge v1, v3, :cond_4c

    .line 2764
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 2766
    :cond_4c
    new-array v0, v3, [Ljava/lang/String;

    .line 2767
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2769
    :cond_54
    return-object v0
.end method

.method private getCalendarSyncWindowAllowedValues(I)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2774
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v2, "7"

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const-string v3, "0"

    aput-object v3, v0, v2

    .line 2778
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    if-le p1, v4, :cond_3b

    const/16 v3, 0x8

    if-ge p1, v3, :cond_3b

    .line 2781
    add-int/lit8 v3, p1, -0x3

    .line 2783
    :goto_29
    if-ge v1, v3, :cond_33

    .line 2784
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 2786
    :cond_33
    new-array v0, v3, [Ljava/lang/String;

    .line 2787
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2789
    :cond_3b
    return-object v0
.end method

.method private getDomain()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 3617
    if-nez v0, :cond_15

    .line 3618
    const-string v0, "AccountSettingsFragment"

    const-string v1, "FATAL : HostAuth is Null"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    const/4 v0, 0x0

    .line 3632
    :cond_14
    :goto_14
    return-object v0

    .line 3621
    :cond_15
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 3622
    const-string v0, ""

    .line 3623
    if-eqz v1, :cond_14

    .line 3624
    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3625
    if-ltz v2, :cond_14

    .line 3626
    if-lez v2, :cond_2a

    .line 3627
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3629
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_14
.end method

.method private getEmailSizeAllowedEntries(I)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 2643
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f08034e

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x7f08034f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f080350

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const v3, 0x7f080351

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f080352

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x7f080353

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const v3, 0x7f080354

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const v3, 0x7f080355

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const v3, 0x7f080356

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f080357

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2656
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2658
    if-ltz p1, :cond_85

    if-ge p1, v4, :cond_85

    .line 2659
    :goto_73
    if-gt v1, p1, :cond_7d

    .line 2660
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 2662
    :cond_7d
    new-array v0, p1, [Ljava/lang/String;

    .line 2663
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2665
    :cond_85
    return-object v0
.end method

.method private getEmailSizeAllowedValues(I)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 2670
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v0, v2

    const-string v2, "9"

    aput-object v2, v0, v4

    .line 2674
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2676
    if-ltz p1, :cond_53

    if-ge p1, v4, :cond_53

    .line 2677
    :goto_41
    if-gt v1, p1, :cond_4b

    .line 2678
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 2680
    :cond_4b
    new-array v0, p1, [Ljava/lang/String;

    .line 2681
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2683
    :cond_53
    return-object v0
.end method

.method private getSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 3500
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f080109

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const v3, 0x7f08028f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0801a5

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const v3, 0x7f0801a6

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f0801a7

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x7f0801a8

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0801a9

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 3510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3512
    if-lez p1, :cond_6b

    if-ge p1, v5, :cond_6b

    .line 3514
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3515
    :goto_57
    add-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_63

    .line 3516
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3515
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 3519
    :cond_63
    new-array v0, p1, [Ljava/lang/String;

    .line 3520
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3522
    :cond_6b
    return-object v0
.end method

.method private getSyncWindowAllowedValues(I)[Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 3527
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "-2"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "4"

    aput-object v3, v0, v2

    const-string v2, "5"

    aput-object v2, v0, v5

    .line 3531
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3533
    if-lez p1, :cond_48

    if-ge p1, v5, :cond_48

    .line 3535
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3536
    :goto_34
    add-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_40

    .line 3537
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3536
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 3540
    :cond_40
    new-array v0, p1, [Ljava/lang/String;

    .line 3541
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3543
    :cond_48
    return-object v0
.end method

.method public static getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "args"

    .prologue
    .line 593
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

.method private getUserName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3636
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 3637
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3638
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    aget-object v0, v0, v4

    return-object v0
.end method

.method private loadSettings()V
    .registers 9

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7a5

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    .line 1220
    const-string v0, "snc"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a8

    const/4 v0, 0x1

    move v4, v0

    .line 1221
    :goto_1f
    if-eqz v4, :cond_39

    .line 1222
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 1223
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncUserEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 1227
    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 1231
    const-string v0, "account_settings"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1232
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0802c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1238
    const-string v1, "account_description"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    .line 1239
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1271
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1280
    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    .line 1281
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1283
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1310
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1319
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v1, :cond_d2

    .line 1320
    :cond_cd
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1322
    :cond_d2
    const-string v1, "add_signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    .line 1323
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_7ac

    const/4 v1, 0x1

    :goto_e9
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1325
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1332
    const-string v1, "account_signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    .line 1334
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1335
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7af

    .line 1346
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v2, 0x7f0801da

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 1347
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1361
    :goto_12b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1385
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1433
    const-string v1, "account_sync_period"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    .line 1434
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1448
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_174

    .line 1449
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1453
    :cond_174
    const-string v0, "account_settings_cc_bcc"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    .line 1454
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7dd

    const/4 v0, 0x1

    .line 1455
    :goto_189
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_7e0

    const/4 v1, 0x1

    .line 1456
    :goto_194
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7e3

    const-string v2, "cc"

    :goto_19a
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1458
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7ed

    const v0, 0x7f080299

    :goto_1a4
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1477
    const-string v0, "forward_with_files"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    .line 1478
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getForwardWithFiles()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1479
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1517
    const-string v0, "account_default"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    .line 1518
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_7f9

    const/4 v0, 0x1

    :goto_1e4
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1519
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccount_message:Landroid/widget/Toast;

    if-eqz v0, :cond_1f0

    .line 1520
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccount_message:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1522
    :cond_1f0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080541

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccount_message:Landroid/widget/Toast;

    .line 1525
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1527
    const-string v0, "account_data_usage"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1529
    const-string v1, "account_check_frequency"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 1532
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v5

    .line 1537
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23b

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_23b

    if-eqz v4, :cond_7fc

    .line 1538
    :cond_23b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1606
    :cond_240
    :goto_240
    const-string v1, "account_setting_main"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    sput-object v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    .line 1607
    const-string v1, "account_exchange_sync_settings"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1609
    if-eqz v4, :cond_838

    .line 1610
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f080448

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1622
    :cond_260
    :goto_260
    const/4 v2, 0x6

    .line 1624
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_26f

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v3, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-eqz v3, :cond_26f

    .line 1625
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 1627
    :cond_26f
    if-nez v2, :cond_9b7

    .line 1628
    const/4 v2, 0x7

    move v3, v2

    .line 1631
    :goto_273
    const-string v2, "email_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 1632
    if-eqz v5, :cond_284

    iget v2, v5, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_292

    :cond_284
    const-string v2, "eas"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2da

    .line 1634
    :cond_292
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0801a4

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1635
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1636
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1638
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$13;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1652
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$14;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$14;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1672
    :cond_2da
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48c

    .line 1674
    const-string v2, "account_empty_trash"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    .line 1675
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setAccountId(J)V

    .line 1676
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setController(Lcom/android/email/Controller;)V

    .line 1677
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setPositiveResultDialog(Landroid/app/Dialog;)V

    .line 1679
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x4028

    cmpg-double v2, v2, v5

    if-gez v2, :cond_31c

    .line 1680
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1684
    :cond_31c
    const-string v2, "account_sync_schedule"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$15;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$15;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1704
    const-string v2, "out_of_office"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$16;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1714
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x4028

    cmpg-double v2, v2, v5

    if-gez v2, :cond_34f

    .line 1715
    const-string v2, "out_of_office"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1718
    :cond_34f
    const/4 v2, 0x0

    .line 1720
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_364

    .line 1721
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1722
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 1724
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v5, v5, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 1725
    if-eqz v5, :cond_84d

    if-lez v2, :cond_84d

    .line 1733
    :cond_364
    :goto_364
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->convertEmailSizeToInt(I)I

    move-result v3

    .line 1735
    const-string v2, "account_email_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    .line 1736
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1737
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1738
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1739
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1740
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$17;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$17;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1756
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$18;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$18;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1767
    const/4 v2, 0x0

    .line 1768
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_9b4

    .line 1769
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    move v3, v2

    .line 1771
    :goto_3bc
    const-string v2, "calendar_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    .line 1773
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0803db

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1774
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0803db

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 1776
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1780
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1781
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 1785
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$19;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$19;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1800
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$20;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$20;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1811
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1815
    const-string v2, "security_options"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$21;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$21;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1834
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x402c

    cmpg-double v2, v2, v5

    if-gez v2, :cond_850

    .line 1835
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1865
    :goto_446
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48c

    .line 1866
    const-string v2, "account_conflict"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    .line 1867
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConflictresolution()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1868
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1869
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$23;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$23;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1876
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$24;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$24;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1891
    :cond_48c
    if-eqz v4, :cond_88a

    .line 1892
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncSyncWindowPreference()V

    .line 1893
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncSyncSchedulePreference()V

    .line 1894
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncMessageFormatPreference()V

    .line 1895
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncEmailSizePreference()V

    .line 1897
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetEmptyTrashPreference(Landroid/preference/PreferenceCategory;)V

    .line 1898
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetOutOfOfficePreference(Landroid/preference/PreferenceCategory;)V

    .line 1899
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetSecurityOptionsPreference(Landroid/preference/PreferenceCategory;)V

    .line 1900
    const-string v2, "calendar_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1901
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1902
    const-string v2, "account_conflict"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1914
    :cond_4be
    :goto_4be
    const-string v1, "account_notify"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    .line 1915
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_89f

    const/4 v1, 0x1

    :goto_4d5
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1916
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1918
    const-string v1, "account_ringtone_select"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    .line 1920
    const/4 v1, 0x0

    .line 1921
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8a2

    .line 1922
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1931
    :cond_4f9
    :goto_4f9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$25;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$25;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1965
    if-eqz v1, :cond_520

    .line 1967
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1968
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "account_ringtone_select"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1973
    :cond_520
    const-string v1, "account_settings_vibrate_when"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    .line 1974
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 1975
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_8e9

    .line 1976
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8c5

    const/4 v1, 0x1

    .line 1977
    :goto_545
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8c8

    const/4 v2, 0x1

    .line 1978
    :goto_550
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_8cb

    const-string v3, "always"

    :goto_556
    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1981
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_8d5

    const v1, 0x7f080141

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_564
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1985
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$26;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$26;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2001
    :goto_571
    const-string v1, "account_servers"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 2003
    const-string v2, "incoming"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2005
    const-string v3, "eas"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8fc

    .line 2006
    const v3, 0x7f08019a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 2011
    :goto_593
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$27;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$27;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2023
    if-eqz v4, :cond_5a0

    .line 2024
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2028
    :cond_5a0
    const-string v2, "outgoing"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 2029
    const/4 v2, 0x1

    .line 2031
    :try_start_5a7
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v5

    .line 2032
    if-eqz v5, :cond_5be

    .line 2033
    invoke-virtual {v5}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_5ba
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5a7 .. :try_end_5ba} :catch_9b1

    move-result-object v2

    .line 2034
    if-eqz v2, :cond_904

    const/4 v2, 0x1

    .line 2040
    :cond_5be
    :goto_5be
    if-eqz v2, :cond_907

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v2, :cond_907

    if-nez v4, :cond_907

    .line 2041
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$28;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$28;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2052
    :goto_5ce
    if-eqz v0, :cond_5db

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_5db

    .line 2053
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2056
    :cond_5db
    const-string v0, "account_sync_contacts"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 2057
    const-string v0, "account_sync_calendar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 2058
    const-string v0, "account_sync_email"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    .line 2061
    const-string v0, "account_conversation_mode"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    .line 2062
    const-string v0, "account_sms_sync"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    .line 2063
    const-string v0, "account_sync_tasks"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    .line 2066
    const-string v0, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_965

    .line 2067
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.contacts"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2071
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2075
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.calendar"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2077
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2079
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.email.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2081
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2085
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    const-string v3, "tasks"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2086
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2089
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_68b

    .line 2097
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2099
    :cond_68b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_90c

    .line 2100
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2160
    :cond_69e
    :goto_69e
    const-string v0, "seven_sync_contacts"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    .line 2161
    const-string v0, "seven_sync_calendar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    .line 2163
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v0, :cond_9a5

    .line 2164
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v0, v2

    invoke-static {v0}, Lcom/seven/Z7/shared/ANSharedCommon;->getAccountName(I)Ljava/lang/String;

    move-result-object v0

    .line 2167
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$30;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$30;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 2179
    const-string v3, "yahoo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_985

    .line 2180
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2181
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2205
    :goto_6d6
    const-string v0, "seven_push_service_common_settings"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 2207
    const-string v1, "seven_sync_schedule"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

    .line 2208
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$31;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2227
    const-string v1, "seven_while_roaming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    .line 2228
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2229
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2230
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$32;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2242
    const-string v1, "seven_while_power_low"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    .line 2243
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2244
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2245
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$33;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$33;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2257
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_753

    .line 2258
    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2262
    :cond_753
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_75e

    .line 2263
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2279
    :cond_75e
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a4

    .line 2280
    const-string v0, "account_auto_retry_times"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    .line 2281
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAutoRetryTimes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2282
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2283
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$34;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$34;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2288
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$35;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$35;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2302
    :cond_7a4
    return-void

    .line 1218
    :cond_7a5
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 1220
    :cond_7a8
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1f

    .line 1323
    :cond_7ac
    const/4 v1, 0x0

    goto/16 :goto_e9

    .line 1350
    :cond_7af
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7c5

    .line 1351
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v2, 0x7f08013b

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto/16 :goto_12b

    .line 1354
    :cond_7c5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 1454
    :cond_7dd
    const/4 v0, 0x0

    goto/16 :goto_189

    .line 1455
    :cond_7e0
    const/4 v1, 0x0

    goto/16 :goto_194

    .line 1456
    :cond_7e3
    if-eqz v1, :cond_7e9

    const-string v2, "bcc"

    goto/16 :goto_19a

    :cond_7e9
    const-string v2, "none"

    goto/16 :goto_19a

    .line 1458
    :cond_7ed
    if-eqz v1, :cond_7f4

    const v0, 0x7f08029a

    goto/16 :goto_1a4

    :cond_7f4
    const v0, 0x7f080298

    goto/16 :goto_1a4

    .line 1518
    :cond_7f9
    const/4 v0, 0x0

    goto/16 :goto_1e4

    .line 1544
    :cond_7fc
    if-eqz v5, :cond_240

    .line 1545
    iget-boolean v1, v5, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    if-eqz v1, :cond_812

    .line 1546
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1548
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1552
    :cond_812
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1553
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1554
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$12;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_240

    .line 1613
    :cond_838
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_260

    .line 1614
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_260

    :cond_84d
    move v2, v3

    .line 1730
    goto/16 :goto_364

    .line 1837
    :cond_850
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    .line 1838
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 1839
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1840
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1841
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$22;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$22;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_446

    .line 1905
    :cond_88a
    const-string v2, "account_message_format"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1906
    if-eqz v2, :cond_4be

    .line 1907
    const-string v2, "account_message_format"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4be

    .line 1915
    :cond_89f
    const/4 v1, 0x0

    goto/16 :goto_4d5

    .line 1924
    :cond_8a2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1925
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 1927
    if-eqz v2, :cond_4f9

    .line 1928
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4f9

    .line 1976
    :cond_8c5
    const/4 v1, 0x0

    goto/16 :goto_545

    .line 1977
    :cond_8c8
    const/4 v2, 0x0

    goto/16 :goto_550

    .line 1978
    :cond_8cb
    if-eqz v2, :cond_8d1

    const-string v3, "silent"

    goto/16 :goto_556

    :cond_8d1
    const-string v3, "never"

    goto/16 :goto_556

    .line 1981
    :cond_8d5
    if-eqz v2, :cond_8e0

    const v1, 0x7f080142

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_564

    :cond_8e0
    const v1, 0x7f080143

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_564

    .line 1997
    :cond_8e9
    const-string v1, "account_notifications"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1998
    const-string v2, "account_settings_vibrate_when"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_571

    .line 2008
    :cond_8fc
    const v3, 0x7f080137

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_593

    .line 2034
    :cond_904
    const/4 v2, 0x0

    goto/16 :goto_5be

    .line 2049
    :cond_907
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5ce

    .line 2112
    :cond_90c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v3

    if-ne v0, v3, :cond_958

    const/4 v0, 0x1

    :goto_918
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2113
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2114
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2116
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_95a

    const/4 v0, 0x1

    .line 2117
    :goto_931
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_69e

    .line 2118
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_942

    .line 2119
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2121
    :cond_942
    if-eqz v0, :cond_95c

    .line 2122
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080527

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 2126
    :goto_94c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$29;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$29;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_69e

    .line 2112
    :cond_958
    const/4 v0, 0x0

    goto :goto_918

    .line 2116
    :cond_95a
    const/4 v0, 0x0

    goto :goto_931

    .line 2124
    :cond_95c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080528

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_94c

    .line 2145
    :cond_965
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2146
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2147
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2148
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2149
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2150
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_69e

    .line 2182
    :cond_985
    const-string v3, "msn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_999

    .line 2183
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2184
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6d6

    .line 2186
    :cond_999
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2187
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6d6

    .line 2190
    :cond_9a5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2191
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6d6

    .line 2036
    :catch_9b1
    move-exception v5

    goto/16 :goto_5be

    :cond_9b4
    move v3, v2

    goto/16 :goto_3bc

    :cond_9b7
    move v3, v2

    goto/16 :goto_273
.end method

.method private onOutOfOffice()V
    .registers 4

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->getOutOfOffice(J)V

    .line 2798
    return-void
.end method

.method private onOutOfOfficeComplete(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 2801
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2802
    const-string v0, "ooo_data"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2803
    const-string v0, "account_id"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2804
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 2805
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08035c

    const/4 v4, 0x0

    const/16 v6, 0x3ea

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2808
    return-void
.end method

.method private onPreferenceChanged()V
    .registers 2

    .prologue
    .line 2817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 2818
    return-void
.end method

.method private onSyncSchedule()V
    .registers 8

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0805cd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2390
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2391
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2392
    const-string v0, "com.android.email.SyncScheduleExtra"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2393
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 2394
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08045b

    const/4 v4, 0x0

    const/16 v6, 0x3ed

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2398
    return-void
.end method

.method private resetEmptyTrashPreference(Landroid/preference/PreferenceCategory;)V
    .registers 4
    .parameter

    .prologue
    .line 2450
    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetEmptyTrashPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const-string v0, "account_empty_trash"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    .line 2452
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2453
    return-void
.end method

.method private resetOutOfOfficePreference(Landroid/preference/PreferenceCategory;)V
    .registers 4
    .parameter

    .prologue
    .line 2456
    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetOutOfOfficePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const-string v0, "out_of_office"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2458
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2459
    return-void
.end method

.method private resetSecurityOptionsPreference(Landroid/preference/PreferenceCategory;)V
    .registers 4
    .parameter

    .prologue
    .line 2462
    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetSecurityOptionsPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-string v0, "security_options"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2464
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2465
    return-void
.end method

.method private saveSettings()V
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2826
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_9

    .line 3195
    :cond_8
    :goto_8
    return-void

    .line 2831
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, -0x2144

    .line 2840
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 2844
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 2847
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 2849
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3f4

    const/16 v0, 0x2000

    :goto_44
    or-int/2addr v1, v0

    .line 2851
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 2852
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3f7

    move v0, v6

    :goto_59
    or-int/2addr v0, v1

    .line 2856
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_89

    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 2857
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 2858
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 2864
    :cond_89
    const-string v1, "cc"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fa

    .line 2865
    or-int/lit16 v0, v0, 0x200

    .line 2866
    and-int/lit16 v0, v0, -0x401

    .line 2874
    :goto_9b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 2878
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setForwardWithFiles(Z)V

    .line 2884
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_108

    .line 2887
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 2888
    invoke-static {v1}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v5

    .line 2892
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_530

    .line 2893
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 2894
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 2895
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v13

    .line 2897
    :goto_d5
    if-eqz v4, :cond_414

    if-lez v2, :cond_414

    .line 2903
    :goto_d9
    if-lez v2, :cond_417

    .line 2904
    mul-int/lit16 v2, v2, 0x400

    .line 2909
    :goto_dd
    if-ge v2, v5, :cond_103

    .line 2910
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    if-lez v1, :cond_103

    .line 2913
    invoke-static {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parseToByte(I)B

    move-result v1

    .line 2915
    :cond_103
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 2917
    :cond_108
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v1, :cond_191

    .line 2919
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_41c

    .line 2920
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_191

    .line 2921
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLookback old value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SyncLookback new value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLookback is changed for account - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 2928
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->resetCheckSyncLookbackForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2938
    :cond_191
    :goto_191
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1a4

    .line 2939
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setMessageFormat(I)V

    .line 2943
    :cond_1a4
    const-string v1, "always"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42d

    .line 2944
    or-int/lit8 v0, v0, 0x2

    .line 2949
    :cond_1b4
    :goto_1b4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2951
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v3, "account_ringtone_select"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 2952
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 2964
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_20d

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 2965
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_20d

    .line 2966
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTextPreviewSize(I)V

    .line 2970
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_43f

    move v0, v6

    :goto_20a
    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setConversationMode(I)V

    .line 2976
    :cond_20d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_27d

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 2977
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2984
    const-string v1, "com.android.calendar"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2986
    const-string v1, "com.android.email.provider"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2989
    const-string v1, "tasks"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2998
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_442

    .line 2999
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Unified account is already created"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->updateExchangeProfile()V

    .line 3007
    :goto_26a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    if-eqz v0, :cond_27d

    .line 3008
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3009
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAutoRetryTimes(I)V

    .line 3013
    :cond_27d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    if-eqz v0, :cond_29e

    .line 3014
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3016
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_52d

    .line 3017
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 3018
    :goto_293
    if-lez v0, :cond_451

    .line 3019
    if-eqz v1, :cond_299

    if-ge v0, v1, :cond_44a

    .line 3020
    :cond_299
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 3037
    :cond_29e
    :goto_29e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_307

    .line 3038
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 3043
    const-string v3, "account_name=? AND account_type=?"

    .line 3046
    new-array v4, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    aput-object v0, v4, v7

    const-string v0, "com.android.exchange"

    aput-object v0, v4, v6

    .line 3054
    :try_start_2bb
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2cf
    .catchall {:try_start_2bb .. :try_end_2cf} :catchall_477

    move-result-object v1

    .line 3058
    if-eqz v1, :cond_2fc

    :try_start_2d2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2fc

    .line 3060
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3062
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3064
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3068
    const-string v3, "calendar_displayName"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2fc
    .catchall {:try_start_2d2 .. :try_end_2fc} :catchall_52a

    .line 3079
    :cond_2fc
    if-eqz v1, :cond_307

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_307

    .line 3080
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3087
    :cond_307
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    if-eqz v0, :cond_31a

    .line 3088
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3089
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setConflictresolution(I)V

    .line 3092
    :cond_31a
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v0, :cond_3aa

    .line 3093
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 3094
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3096
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3097
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3098
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3100
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    int-to-long v8, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_362

    .line 3101
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    int-to-long v8, v0

    iput-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 3102
    const-string v4, "pref_truc_time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    :cond_362
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    if-eq v0, v2, :cond_378

    .line 3106
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    .line 3107
    const-string v4, "checkbox_quiet_time_roaming"

    if-ne v2, v6, :cond_485

    move v0, v6

    :goto_371
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    :cond_378
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    if-eq v0, v3, :cond_38e

    .line 3111
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    .line 3112
    const-string v2, "checkbox_quiet_time_low_power"

    if-ne v3, v6, :cond_488

    move v0, v6

    :goto_387
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    :cond_38e
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a1

    .line 3116
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$45;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$45;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3133
    :cond_3a1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3144
    :cond_3aa
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3145
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3148
    const-string v2, "accountKey=? and type=?"

    .line 3150
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWhere(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3151
    if-eqz v3, :cond_507

    array-length v0, v3

    if-lez v0, :cond_507

    move v0, v7

    .line 3152
    :goto_3de
    array-length v1, v3

    if-ge v0, v1, :cond_507

    .line 3153
    aget-object v1, v3, v0

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 3155
    const/4 v1, -0x1

    .line 3156
    aget-object v5, v3, v0

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    sparse-switch v5, :sswitch_data_536

    .line 3152
    :goto_3f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3de

    :cond_3f4
    move v0, v7

    .line 2849
    goto/16 :goto_44

    :cond_3f7
    move v0, v7

    .line 2852
    goto/16 :goto_59

    .line 2867
    :cond_3fa
    const-string v1, "bcc"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40e

    .line 2868
    or-int/lit16 v0, v0, 0x400

    .line 2869
    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_9b

    .line 2871
    :cond_40e
    and-int/lit16 v0, v0, -0x401

    .line 2872
    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_9b

    :cond_414
    move v2, v3

    .line 2902
    goto/16 :goto_d9

    .line 2907
    :cond_417
    const v2, 0x7fffffff

    goto/16 :goto_dd

    .line 2931
    :cond_41c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_191

    .line 2945
    :cond_42d
    const-string v1, "silent"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 2946
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_1b4

    :cond_43f
    move v0, v7

    .line 2970
    goto/16 :goto_20a

    .line 3002
    :cond_442
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SNC_PROFILE_TOBE_BACKEDUP"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_26a

    .line 3022
    :cond_44a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto/16 :goto_29e

    .line 3028
    :cond_451
    :try_start_451
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z
    :try_end_456
    .catch Ljava/lang/IllegalArgumentException; {:try_start_451 .. :try_end_456} :catch_458

    goto/16 :goto_29e

    .line 3030
    :catch_458
    move-exception v0

    .line 3031
    const-string v1, "exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29e

    .line 3079
    :catchall_477
    move-exception v0

    move-object v1, v8

    :goto_479
    if-eqz v1, :cond_484

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_484

    .line 3080
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3079
    :cond_484
    throw v0

    :cond_485
    move v0, v7

    .line 3107
    goto/16 :goto_371

    :cond_488
    move v0, v7

    .line 3112
    goto/16 :goto_387

    .line 3158
    :sswitch_48b
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v5, v5, 0x800

    const/16 v8, 0x800

    if-ne v5, v8, :cond_49b

    .line 3159
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    .line 3165
    :cond_49b
    :sswitch_49b
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 3166
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3167
    const-string v9, "syncInterval"

    aget-object v10, v3, v0

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_500

    :goto_4b1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3169
    const-string v1, "peakSyncSchedule"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3170
    const-string v1, "offpeakSyncSchedule"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3171
    const-string v1, "syncLookback"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3172
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v10, v12, [Ljava/lang/String;

    aput-object v5, v10, v7

    aput-object v4, v10, v6

    invoke-virtual {v1, v9, v8, v2, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3f1

    .line 3167
    :cond_500
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    goto :goto_4b1

    .line 3181
    :cond_507
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 3185
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_8

    .line 3186
    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 3190
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x5

    move v5, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_8

    .line 3079
    :catchall_52a
    move-exception v0

    goto/16 :goto_479

    :cond_52d
    move v0, v7

    goto/16 :goto_293

    :cond_530
    move v4, v6

    move v2, v7

    move v3, v7

    goto/16 :goto_d5

    .line 3156
    nop

    :sswitch_data_536
    .sparse-switch
        0x0 -> :sswitch_49b
        0x4 -> :sswitch_48b
        0x41 -> :sswitch_49b
        0x42 -> :sswitch_49b
        0x45 -> :sswitch_49b
    .end sparse-switch
.end method

.method private showToastForAllPremiumAccounts()V
    .registers 4

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f08047e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3496
    return-void
.end method

.method private updateExchangeProfile()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3552
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up ExchangeProfile for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-nez v0, :cond_d9

    .line 3559
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Cretaing New Profile to Back up"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>()V

    .line 3565
    :goto_30
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    .line 3566
    if-eqz v4, :cond_ea

    .line 3567
    iget-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeServer(Ljava/lang/String;)V

    .line 3568
    iget v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e4

    move v1, v2

    .line 3569
    :goto_48
    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_e7

    .line 3570
    :goto_4e
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeSecureFlag(Z)V

    .line 3571
    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeVerifyCertFlag(Z)V

    .line 3576
    :goto_54
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUser(Ljava/lang/String;)V

    .line 3577
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeEmail(Ljava/lang/String;)V

    .line 3578
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDomain(Ljava/lang/String;)V

    .line 3579
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setFirstName(Ljava/lang/String;)V

    .line 3581
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 3588
    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeCalSyncFlag(Z)V

    .line 3590
    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 3592
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeABSyncFlag(Z)V

    .line 3598
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v1

    .line 3599
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDaysToSync(I)V

    .line 3600
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMessageFormat(Ljava/lang/String;)V

    .line 3602
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationStartTime(I)V

    .line 3604
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationEndTime(I)V

    .line 3606
    const/4 v1, 0x5

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 3608
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/email/Controller;->updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 3609
    sget-object v1, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v1, :cond_d8

    .line 3610
    const-string v1, "AccountSettingsFragment"

    const-string v2, "Exisiting Profile updated"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 3613
    :cond_d8
    return-void

    .line 3562
    :cond_d9
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Updating Exisiting Profile to Back up"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    goto/16 :goto_30

    :cond_e4
    move v1, v3

    .line 3568
    goto/16 :goto_48

    :cond_e7
    move v2, v3

    .line 3569
    goto/16 :goto_4e

    .line 3573
    :cond_ea
    const-string v1, "AccountSettingsFragment"

    const-string v2, "FATAL : HostAuth is Null"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54
.end method


# virtual methods
.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3668
    const-string v6, "content://media/internal/audio/media"

    .line 3670
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3672
    const-string v0, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windstar The path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    const-string v0, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windstar The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    if-eqz v1, :cond_d9

    .line 3676
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3680
    if-eqz v0, :cond_d9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d9

    .line 3681
    const-string v1, "AccountSettingsFragment"

    const-string v2, " The path is exist in the DB"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3683
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3684
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3687
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :goto_d8
    return-object v0

    .line 3691
    :cond_d9
    const-string v0, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windstar not Found The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d8
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 678
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 679
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3200
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3203
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_b

    .line 3286
    :cond_a
    :goto_a
    return-void

    .line 3206
    :cond_b
    sparse-switch p1, :sswitch_data_158

    goto :goto_a

    .line 3208
    :sswitch_f
    if-ne p2, v2, :cond_4a

    .line 3209
    if-eqz p3, :cond_4a

    .line 3210
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeOwnCertificateAlias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeOwnCertificate(Ljava/lang/String;)V

    .line 3212
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeEncryptAll(Z)V

    .line 3214
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeSignAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeSignAll(Z)V

    .line 3216
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeSignAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeSignAlgorithm(I)V

    .line 3218
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptionAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeEncryptionAlgorithm(I)V

    .line 3222
    :cond_4a
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_a

    .line 3225
    :sswitch_54
    if-ne p2, v2, :cond_6a

    .line 3226
    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 3227
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 3228
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    .line 3230
    :cond_6a
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_a

    .line 3235
    :sswitch_74
    if-ne p2, v2, :cond_a

    if-eqz p3, :cond_a

    .line 3236
    invoke-virtual {p0, p3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSyncScheduleData(Landroid/content/Intent;)V

    .line 3237
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    goto :goto_a

    .line 3242
    :sswitch_7f
    if-ne p2, v2, :cond_d3

    if-eqz p3, :cond_d3

    .line 3244
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3246
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 3248
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_d3

    .line 3249
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    .line 3250
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3254
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3256
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 3257
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3258
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    .line 3261
    :cond_d3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_a

    .line 3265
    :sswitch_de
    if-ne p2, v2, :cond_120

    .line 3266
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    .line 3268
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 3269
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3271
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_12b

    .line 3272
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3273
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 3274
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3281
    :goto_11d
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    .line 3283
    :cond_120
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_a

    .line 3276
    :cond_12b
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3278
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 3279
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_11d

    .line 3206
    nop

    :sswitch_data_158
    .sparse-switch
        0x3e9 -> :sswitch_f
        0x3eb -> :sswitch_54
        0x3ed -> :sswitch_74
        0xbda -> :sswitch_7f
        0xbdb -> :sswitch_de
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 604
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    .line 607
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_e

    .line 608
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 610
    :cond_e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0801f6

    const/4 v8, 0x1

    .line 623
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 627
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    .line 628
    new-instance v4, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    invoke-direct {v4, v5, v6}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 631
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    if-nez v4, :cond_40

    .line 632
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0801fa

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 636
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    .line 639
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    :cond_40
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    if-nez v4, :cond_64

    .line 640
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 641
    .restart local v3       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080042

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 647
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    .line 653
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    :cond_64
    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 657
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 658
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_8d

    .line 659
    const-string v4, "AccountSettingsFragment.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 660
    .local v0, accountId:J
    const-string v4, "AccountSettingsFragment.Email"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountEmail:Ljava/lang/String;

    .line 661
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_8d

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v4, :cond_8d

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startLoadingAccount(J)V

    .line 666
    .end local v0           #accountId:J
    :cond_8d
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 669
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setHasOptionsMenu(Z)V

    .line 670
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 3645
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 3647
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 771
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 773
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 775
    return-void
.end method

.method public onModifyUserAccount(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 2532
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModifyUserAccount - mAccountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmailSync :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContactSync :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    .line 2536
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 2537
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    if-nez v0, :cond_7a

    .line 2538
    const-string v0, "AccountSettingsFragment"

    const-string v1, "FATAL - mSncEndPoint is null from Snc Module"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :goto_79
    return-void

    .line 2541
    :cond_7a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2542
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2543
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_92
    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncService;

    .line 2544
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 2546
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_92

    .line 2547
    :cond_b6
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_92

    .line 2550
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_92

    .line 2553
    :cond_ce
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_79
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 742
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 743
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    if-eqz v0, :cond_a

    .line 744
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    .line 746
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 747
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 3653
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 3655
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 3657
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 3658
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3657
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3660
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 709
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 711
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    if-eqz v1, :cond_4f

    .line 716
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 718
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 722
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 723
    .local v0, refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_44

    .line 725
    :cond_3c
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 726
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 734
    .end local v0           #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_43
    return-void

    .line 729
    .restart local v0       #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_44
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 730
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 733
    .end local v0           #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_4f
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_43
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 783
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 784
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 690
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 693
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v0, :cond_11

    .line 694
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    .line 696
    :cond_11
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 758
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 760
    return-void
.end method

.method public saveSyncScheduleData(Landroid/content/Intent;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 2309
    const-string v0, "AccountSettingsFragment"

    const-string v1, "saveSyncScheduleData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2311
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-eqz v0, :cond_f3

    .line 2312
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 2314
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSchedule of account - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2316
    const-string v0, "peakDays"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2317
    const-string v0, "peakStartMinute"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2318
    const-string v0, "peakEndMinute"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2319
    const-string v0, "peakSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2320
    const-string v0, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2321
    const-string v0, "roamingSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2323
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 2324
    array-length v3, v2

    const/4 v0, 0x0

    :goto_b5
    if-ge v0, v3, :cond_e0

    aget-object v4, v2, v0

    .line 2325
    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_cb

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v5

    if-nez v5, :cond_ce

    .line 2324
    :cond_cb
    :goto_cb
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 2329
    :cond_ce
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2330
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_cb

    .line 2332
    :cond_e0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 2335
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2336
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->setupPushForUnifiedAccount()V

    .line 2337
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2340
    :cond_f3
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 790
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 791
    return-void
.end method

.method public startLoadingAccount(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 798
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 799
    return-void
.end method
