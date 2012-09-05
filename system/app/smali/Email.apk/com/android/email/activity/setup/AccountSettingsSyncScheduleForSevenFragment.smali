.class public Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsSyncScheduleForSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/seven/Z7/shared/PreferenceConstants$EmailAccountPreferences;
.implements Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static friSelected:Z

.field public static mPeakDaysArray:[Z

.field public static monSelected:Z

.field public static satSelected:Z

.field public static sunSelected:Z

.field public static thuSelected:Z

.field public static tueSelected:Z

.field public static wedSelected:Z


# instance fields
.field private btnEndTime:Landroid/widget/Button;

.field private btnStartTime:Landroid/widget/Button;

.field private isPeakStartTime:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCancelButton:Landroid/widget/Button;

.field private mDoneButton:Landroid/widget/Button;

.field private mEndTime:Ljava/lang/String;

.field private mLoaded:Z

.field private mOffPeakSchedule:I

.field private mOffPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPeakSchedule:I

.field private mPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mStartTime:Ljava/lang/String;

.field mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private pa:Landroid/preference/PreferenceActivity;

.field private t1:Landroid/widget/ToggleButton;

.field private t2:Landroid/widget/ToggleButton;

.field private t3:Landroid/widget/ToggleButton;

.field private t4:Landroid/widget/ToggleButton;

.field private t5:Landroid/widget/ToggleButton;

.field private t6:Landroid/widget/ToggleButton;

.field private t7:Landroid/widget/ToggleButton;

.field private timePickerDialog:Landroid/app/TimePickerDialog;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    .line 99
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    .line 101
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    .line 103
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    .line 105
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    .line 107
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    .line 109
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    .line 111
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    .line 117
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    return-void

    :array_20
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
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 85
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    .line 87
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    .line 89
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    .line 91
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    .line 93
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    .line 95
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    .line 97
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    .line 317
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;Landroid/widget/Button;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->isPeakStartTime:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Lcom/digc/seven/Z7MailHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private getSelectedPeakDays()Ljava/lang/String;
    .registers 4

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1f

    .line 540
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_19

    .line 541
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 543
    :cond_19
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 546
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadSettings(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 248
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 250
    invoke-static {p1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 252
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    .line 253
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    .line 255
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 256
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 258
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakDays()V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakStartTime(Landroid/content/Context;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakEndTime(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setWidgetProperties()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    .line 265
    return-void
.end method

.method private onSave()V
    .registers 14

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 369
    .local v1, context:Landroid/content/Context;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v0, changedSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    .line 372
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    .line 374
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    if-ne v8, v9, :cond_3d

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    if-eq v8, v9, :cond_6b

    .line 377
    :cond_3d
    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    if-nez v8, :cond_11a

    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    if-nez v8, :cond_11a

    .line 378
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :goto_5f
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    iput v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    .line 388
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    iput v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    .line 391
    :cond_6b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getSelectedPeakDays()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, peakDays:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    .line 393
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v5, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    .line 396
    :cond_7d
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    .line 397
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    .line 399
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15c

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15c

    const/4 v4, 0x1

    .line 400
    .local v4, isPause:Z
    :goto_98
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    if-nez v8, :cond_15f

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15f

    const/4 v3, 0x1

    .line 402
    .local v3, isOffPeakTime:Z
    :goto_a6
    if-nez v4, :cond_1dc

    .line 405
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, splitPeakStartTime:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, splitPeakEndTime:[Ljava/lang/String;
    if-nez v3, :cond_171

    .line 416
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const/4 v2, 0x0

    .local v2, i:I
    :goto_fb
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1f1

    .line 422
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_162

    .line 423
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :goto_117
    add-int/lit8 v2, v2, 0x1

    goto :goto_fb

    .line 380
    .end local v2           #i:I
    .end local v3           #isOffPeakTime:Z
    .end local v4           #isPause:Z
    .end local v5           #peakDays:Ljava/lang/String;
    .end local v6           #splitPeakEndTime:[Ljava/lang/String;
    .end local v7           #splitPeakStartTime:[Ljava/lang/String;
    :cond_11a
    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_140

    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_140

    .line 381
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5f

    .line 384
    :cond_140
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5f

    .line 399
    .restart local v5       #peakDays:Ljava/lang/String;
    :cond_15c
    const/4 v4, 0x0

    goto/16 :goto_98

    .line 400
    .restart local v4       #isPause:Z
    :cond_15f
    const/4 v3, 0x0

    goto/16 :goto_a6

    .line 425
    .restart local v2       #i:I
    .restart local v3       #isOffPeakTime:Z
    .restart local v6       #splitPeakEndTime:[Ljava/lang/String;
    .restart local v7       #splitPeakStartTime:[Ljava/lang/String;
    :cond_162
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_117

    .line 428
    .end local v2           #i:I
    :cond_171
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1ae
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1f1

    .line 434
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_1cd

    .line 435
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :goto_1ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ae

    .line 437
    :cond_1cd
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ca

    .line 442
    .end local v2           #i:I
    .end local v6           #splitPeakEndTime:[Ljava/lang/String;
    .end local v7           #splitPeakStartTime:[Ljava/lang/String;
    :cond_1dc
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1dd
    const/4 v8, 0x7

    if-ge v2, v8, :cond_1f1

    .line 443
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_1dd

    .line 447
    :cond_1f1
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v8}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 449
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;

    invoke-direct {v9, p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/util/HashMap;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 474
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 475
    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 476
    const v8, 0x7f08047e

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 479
    return-void
.end method

.method private setupPeakDays()V
    .registers 6

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, condition:I
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_26

    move-result v0

    .line 280
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2a

    .line 281
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_2a

    .line 282
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_2b

    .line 283
    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 281
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 276
    .end local v2           #i:I
    :catch_26
    move-exception v1

    .line 277
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 288
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_2a
    return-void

    .line 285
    .restart local v2       #i:I
    :cond_2b
    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    goto :goto_23
.end method

.method private setupPeakEndTime(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method

.method private setupPeakStartTime(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method private showTimePickerDialog(Landroid/content/Context;Landroid/widget/Button;Z)V
    .registers 11
    .parameter "context"
    .parameter "btn"
    .parameter "isStartTime"

    .prologue
    const/4 v5, 0x1

    .line 343
    const/4 v3, 0x0

    .line 344
    .local v3, hour:I
    const/4 v4, 0x0

    .line 346
    .local v4, minute:I
    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->isPeakStartTime:Z

    .line 348
    const/4 v6, 0x0

    .line 349
    .local v6, SplitPeakTime:[Ljava/lang/String;
    if-eqz p3, :cond_37

    .line 350
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 354
    :goto_12
    array-length v0, v6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 355
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 356
    aget-object v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 359
    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    if-nez v0, :cond_42

    .line 360
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 364
    :goto_31
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 365
    return-void

    .line 352
    :cond_37
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_12

    .line 362
    :cond_42
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, v3, v4}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_31
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_e6

    .line 535
    :goto_a
    return-void

    .line 485
    :sswitch_b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->onSave()V

    .line 486
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_a

    .line 489
    :sswitch_15
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, p0, v0, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_a

    .line 492
    :sswitch_1b
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    if-nez v2, :cond_20

    move v0, v1

    :cond_20
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    .line 493
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 494
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_a

    .line 497
    :sswitch_30
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "tuesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    if-nez v2, :cond_4c

    :goto_3b
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    .line 499
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 500
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_a

    :cond_4c
    move v1, v0

    .line 498
    goto :goto_3b

    .line 503
    :sswitch_4e
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "wednesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    if-nez v2, :cond_6a

    :goto_59
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    .line 505
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 506
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_a

    :cond_6a
    move v1, v0

    .line 504
    goto :goto_59

    .line 509
    :sswitch_6c
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "thursday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    if-nez v2, :cond_88

    :goto_77
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    .line 511
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 512
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_a

    :cond_88
    move v1, v0

    .line 510
    goto :goto_77

    .line 515
    :sswitch_8a
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "friday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    if-nez v2, :cond_a7

    :goto_95
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    .line 517
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 518
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_a

    :cond_a7
    move v1, v0

    .line 516
    goto :goto_95

    .line 521
    :sswitch_a9
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "saturday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    if-nez v2, :cond_c6

    :goto_b4
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    .line 523
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 524
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_a

    :cond_c6
    move v1, v0

    .line 522
    goto :goto_b4

    .line 527
    :sswitch_c8
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "sunday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    if-nez v2, :cond_e4

    :goto_d3
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    .line 529
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 530
    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    aput-boolean v2, v1, v0

    goto/16 :goto_a

    :cond_e4
    move v1, v0

    .line 528
    goto :goto_d3

    .line 483
    :sswitch_data_e6
    .sparse-switch
        0x7f10001e -> :sswitch_b
        0x7f100023 -> :sswitch_15
        0x7f10011e -> :sswitch_c8
        0x7f10011f -> :sswitch_1b
        0x7f100120 -> :sswitch_30
        0x7f100121 -> :sswitch_4e
        0x7f100122 -> :sswitch_6c
        0x7f100123 -> :sswitch_8a
        0x7f100124 -> :sswitch_a9
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0c0178

    .line 226
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    .local v0, cancelButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    .local v1, doneButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_22

    .line 234
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    :cond_22
    if-eqz v1, :cond_2e

    .line 238
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    :cond_2e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    if-eqz p1, :cond_e

    .line 134
    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    .line 136
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setHasOptionsMenu(Z)V

    .line 137
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 569
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 571
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    const v4, 0x7f04000e

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 150
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    .line 152
    const v4, 0x7f100294

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    .line 153
    const v4, 0x7f100295

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    .line 155
    const v4, 0x7f100296

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    .line 156
    const v4, 0x7f100297

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    .line 158
    const v4, 0x7f10001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mDoneButton:Landroid/widget/Button;

    .line 159
    const v4, 0x7f100023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mCancelButton:Landroid/widget/Button;

    .line 160
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const/4 v4, 0x2

    new-array v2, v4, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0803b0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v7

    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0803af

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v8

    .line 170
    .local v2, peakTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 173
    .local v1, peakScheduleAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 175
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    const v4, 0x7f10011f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    .line 179
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v4, 0x7f100120

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    .line 181
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v4, 0x7f100121

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    .line 183
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v4, 0x7f100122

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    .line 185
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v4, 0x7f100123

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    .line 187
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v4, 0x7f100124

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    .line 189
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v4, 0x7f10011e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    .line 191
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-object v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 578
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 579
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 580
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 582
    :cond_15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.startTime"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.endTime"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 206
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    if-nez v0, :cond_e

    .line 207
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->loadSettings(Landroid/content/Context;)V

    .line 209
    :cond_e
    return-void
.end method

.method public setWidgetProperties()V
    .registers 3

    .prologue
    .line 550
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    .line 551
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    .line 552
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    .line 553
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    .line 554
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    .line 555
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    .line 556
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    .line 558
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 559
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 565
    return-void
.end method
