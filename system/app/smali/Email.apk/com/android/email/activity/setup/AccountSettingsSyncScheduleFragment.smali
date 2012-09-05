.class public Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsSyncScheduleFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mPeakDaysArray:[Z


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private final mCalendar:Ljava/util/Calendar;

.field private mEndHour:I

.field private mEndMinute:I

.field private mLoaded:Z

.field private mOffPeakSchedule:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mSyncEndTime:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncStartTime:I

.field private offPeakSchedule:Landroid/preference/ListPreference;

.field private pa:Landroid/preference/PreferenceActivity;

.field private peakDays:Landroid/preference/Preference;

.field private peakEndTime:Landroid/preference/Preference;

.field private peakSchedule:Landroid/preference/ListPreference;

.field private peakStartTime:Landroid/preference/Preference;

.field private tmpEndTime:I

.field private tmpStartTime:I

.field private whileRoaming:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    return-void

    nop

    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;Landroid/preference/Preference;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getMinuteOfDay(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)Landroid/util/Pair;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    return p1
.end method

.method private getMinuteOfDay(II)I
    .registers 4
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 817
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    return v0
.end method

.method private getPeakDays()B
    .registers 4

    .prologue
    .line 794
    const/4 v1, 0x0

    .line 795
    .local v1, peakDays:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_12

    .line 796
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_f

    .line 797
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 795
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 800
    :cond_12
    return v1
.end method

.method private loadSettings(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakStartTime(Landroid/content/Context;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakEndTime(Landroid/content/Context;)V

    .line 399
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakDays()V

    .line 400
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakSchedule()V

    .line 401
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupOffPeakSchedule()V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupRoaming(Landroid/content/Context;)V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    .line 427
    return-void
.end method

.method private onSave()V
    .registers 9

    .prologue
    .line 770
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getPeakDays()B

    move-result v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    iget v6, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 773
    .local v0, saveSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 774
    .local v7, resultIntent:Landroid/content/Intent;
    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 775
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v7}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 776
    return-void
.end method

.method private readDataFromBundle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 733
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 734
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 735
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extraAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 737
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-nez v0, :cond_30

    .line 738
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->TAG:Ljava/lang/String;

    const-string v1, "Expecting SyncScheduleData in parcelable extra EXTRA_SCHEDULE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 741
    :cond_30
    return-void
.end method

.method private restorePeakDaysArray()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 787
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    .line 788
    .local v1, peakDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1a

    .line 789
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    shl-int v2, v3, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_18

    move v2, v3

    :goto_13
    aput-boolean v2, v4, v0

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 789
    :cond_18
    const/4 v2, 0x0

    goto :goto_13

    .line 791
    :cond_1a
    return-void
.end method

.method private restoreSettings()V
    .registers 8

    .prologue
    const/4 v4, -0x2

    .line 744
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-nez v0, :cond_14

    .line 745
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 750
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    .line 751
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    .line 756
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    .line 757
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->restorePeakDaysArray()V

    .line 758
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    .line 759
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    .line 760
    return-void
.end method

.method private setHoursAndMinutes(I)Landroid/util/Pair;
    .registers 7
    .parameter "syncTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, hour:I
    const/4 v1, 0x0

    .line 806
    .local v1, minute:I
    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-ne p1, v2, :cond_25

    .line 807
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 808
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 813
    :goto_17
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 810
    :cond_25
    div-int/lit8 v0, p1, 0x3c

    .line 811
    rem-int/lit8 v1, p1, 0x3c

    goto :goto_17
.end method

.method private setupOffPeakSchedule()V
    .registers 3

    .prologue
    .line 470
    const-string v0, "account_sync_offpeaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    return-void
.end method

.method private setupPeakDays()V
    .registers 3

    .prologue
    .line 485
    const-string v0, "account_sync_peakdays"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakDays:Landroid/preference/Preference;

    .line 486
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakDays:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 493
    return-void
.end method

.method private setupPeakEndTime(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 635
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 636
    .local v6, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 637
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 638
    const-string v0, "account_sync_peakendtime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    .line 640
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    if-eqz v0, :cond_74

    .line 641
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v7

    .line 642
    .local v7, tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 643
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 646
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    .end local v7           #tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_69
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 665
    return-void

    .line 651
    :cond_74
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_69
.end method

.method private setupPeakSchedule()V
    .registers 3

    .prologue
    .line 455
    const-string v0, "account_sync_peaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    .line 456
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 467
    return-void
.end method

.method private setupPeakStartTime(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 602
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 603
    .local v6, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    .line 604
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    .line 605
    const-string v0, "account_sync_peakstarttime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    .line 607
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    if-eqz v0, :cond_74

    .line 608
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v7

    .line 609
    .local v7, tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 610
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 613
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    .end local v7           #tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_69
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 632
    return-void

    .line 618
    :cond_74
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_69
.end method

.method private setupRoaming(Landroid/content/Context;)V
    .registers 14
    .parameter "context"

    .prologue
    const v11, 0x7f0803bf

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 496
    const-string v7, "account_sync_while_roaming"

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    .line 498
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    .line 499
    .local v6, securityPolicy:Lcom/android/email/SecurityPolicy;
    const/4 v0, 0x0

    .line 504
    .local v0, policySet:Lcom/android/emailcommon/service/PolicySet;
    new-array v2, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v8

    .line 506
    .local v2, roamingType1:[Ljava/lang/CharSequence;
    new-array v3, v9, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v3, v8

    .line 507
    .local v3, roamingType1entryValues:[Ljava/lang/CharSequence;
    new-array v4, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const v7, 0x7f0803c0

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    .line 510
    .local v4, roamingType2:[Ljava/lang/CharSequence;
    new-array v5, v10, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v5, v8

    const-string v7, "1"

    aput-object v7, v5, v9

    .line 513
    .local v5, roamingType2entryValues:[Ljava/lang/CharSequence;
    if-eqz v6, :cond_50

    .line 514
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 516
    :cond_50
    if-eqz v0, :cond_8f

    iget-boolean v7, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v7, :cond_8f

    .line 517
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 518
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 547
    :goto_60
    const/4 v1, 0x0

    .line 548
    .local v1, position:I
    iget v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    packed-switch v7, :pswitch_data_9c

    .line 553
    :goto_66
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 554
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 575
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 585
    return-void

    .line 520
    .end local v1           #position:I
    :cond_8f
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 521
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 550
    .restart local v1       #position:I
    :pswitch_9a
    const/4 v1, 0x1

    goto :goto_66

    .line 548
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_9a
    .end packed-switch
.end method

.method private showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V
    .registers 11
    .parameter "context"
    .parameter "preference"
    .parameter "isStartTime"

    .prologue
    .line 707
    iget v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 708
    .local v3, hour:I
    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 709
    .local v4, minute:I
    if-eqz p3, :cond_a

    .line 710
    iget v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    .line 711
    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    .line 714
    :cond_a
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/preference/Preference;Z)V

    const-string v1, "24"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v5, 0x1

    :goto_24
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 729
    .local v0, timePicker:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 730
    return-void

    .line 714
    .end local v0           #timePicker:Landroid/app/TimePickerDialog;
    :cond_2c
    const/4 v5, 0x0

    goto :goto_24
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    if-eqz p1, :cond_1e

    .line 163
    const-string v2, "AccountSettingsSyncScheduleFragment.startTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpStartTime:I

    .line 164
    const-string v2, "AccountSettingsSyncScheduleFragment.endTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpEndTime:I

    .line 165
    const-string v2, "AccountSettingsSyncScheduleFragment.loaded"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    .line 168
    :cond_1e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    .line 174
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->addPreferencesFromResource(I)V

    .line 175
    const-string v2, "sync_syncshedule"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 177
    .local v1, topCategory:Landroid/preference/PreferenceCategory;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->readDataFromBundle()V

    .line 179
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->restoreSettings()V

    .line 181
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->loadSettings(Landroid/content/Context;)V

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v3, "refresh_widget"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHasOptionsMenu(Z)V

    .line 187
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 300
    const v0, 0x7f0f0015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 301
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 357
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 349
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->onSave()V

    goto :goto_7

    .line 352
    :sswitch_d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_7

    .line 347
    nop

    :sswitch_data_16
    .sparse-switch
        0x7f100023 -> :sswitch_d
        0x7f1002eb -> :sswitch_9
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 13
    .parameter "menu"

    .prologue
    const v10, 0x7f1002eb

    const v9, 0x7f100023

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 306
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 307
    .local v2, mOrientation:I
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    .line 308
    .local v4, size:I
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 309
    .local v3, okItem:Landroid/view/MenuItem;
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 311
    .local v0, cancelItem:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v4, :cond_40

    .line 312
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-eq v5, v10, :cond_3d

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-eq v5, v9, :cond_3d

    .line 314
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 318
    :cond_40
    if-ne v2, v7, :cond_5e

    .line 319
    const/4 v1, 0x0

    :goto_43
    if-ge v1, v4, :cond_7a

    .line 320
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 321
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 322
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 319
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 329
    :cond_5e
    if-eqz v3, :cond_6c

    .line 330
    const v5, 0x7f02022a

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 331
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 335
    :cond_6c
    if-eqz v0, :cond_7a

    .line 336
    const v5, 0x7f02021f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 337
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 342
    :cond_7a
    return-void
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 378
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 379
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 380
    .local v6, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    .line 381
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    .line 384
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 388
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 389
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 392
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 368
    const-string v0, "AccountSettingsSyncScheduleFragment.startTime"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    const-string v0, "AccountSettingsSyncScheduleFragment.endTime"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    const-string v0, "AccountSettingsSyncScheduleFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    return-void
.end method

.method showRequireManualSyncRoamingToast()V
    .registers 6

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 589
    .local v1, securityPolicy:Lcom/android/email/SecurityPolicy;
    const/4 v0, 0x0

    .line 590
    .local v0, policySet:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v1, :cond_17

    .line 591
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 593
    :cond_17
    if-eqz v0, :cond_2c

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v2, :cond_2c

    .line 594
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0803c1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 598
    :cond_2c
    return-void
.end method
