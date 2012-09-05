.class public Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.super Landroid/app/Activity;
.source "AlarmDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static alarmogg:Ljava/lang/String;


# instance fields
.field private btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private hourWatcher:Landroid/text/TextWatcher;

.field private leftVolume:Landroid/widget/ImageView;

.field private mAMPM:I

.field private mAlarmName:Landroid/widget/EditText;

.field private mAlarmRepeatType:Landroid/view/View;

.field private mAlarmTone:Landroid/widget/TextView;

.field private mAlarmToneBox:Landroid/view/View;

.field private mAlarmToneStr:Ljava/lang/String;

.field private mAlarmType:Landroid/widget/TextView;

.field private mAlarmTypeArray:[Ljava/lang/String;

.field private mAlarmTypeBox:Landroid/view/View;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mDataChnaged:Z

.field private mDetailType:I

.field private mErrorRingtoneManager:Z

.field private mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

.field private mInfoAlarmName:Ljava/lang/String;

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

.field private mNeedPopupReOpen:Z

.field private mOldAudioStream:I

.field private mOldVolume:I

.field private mOnDialog:Z

.field private mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

.field private mRepeatDayCheckBox:Landroid/widget/CheckBox;

.field private mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

.field private mRepeatTypeLinear:Landroid/widget/LinearLayout;

.field mRingtoneDlg:Landroid/app/AlertDialog;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mRingtoneVol:I

.field private mSelectedIndex:I

.field private mSelectedUri:Landroid/net/Uri;

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mSetAsUri:Ljava/lang/String;

.field private mSubmitted:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTmpText:Landroid/text/Editable;

.field private mToast:Landroid/widget/Toast;

.field private mVolume:Landroid/widget/SeekBar;

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

.field private minWatcher:Landroid/text/TextWatcher;

.field private rightVolume:Landroid/widget/ImageView;

.field smartAlarm:Landroid/widget/LinearLayout;

.field smartAlarm_btn:Landroid/widget/CheckBox;

.field private vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    .line 89
    const-string v0, "/system/media/audio/alarms/Good_Morning.ogg"

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->alarmogg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z

    .line 179
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    .line 202
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    .line 221
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 225
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z

    .line 227
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    .line 252
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    .line 2740
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->saveDetailChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->cancelDetailChange()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->volumeKeyEvent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->changeAlarmType(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/content/Context;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatType()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    return p1
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/text/Editable;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;

    return-object p1
.end method

.method private calAlarmTime(I)I
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x7

    .line 1471
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1472
    const-string v0, "AlarmDetail"

    const-string v1, "YKYU calAlarmTime -3-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1476
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 1477
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_36

    .line 1478
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YKYU calAlarmTime start Day = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_36
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1481
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getCurrentSettingTime()J

    move-result-wide v0

    .line 1483
    sget-boolean v5, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v5, :cond_78

    .line 1484
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v5

    if-nez v5, :cond_78

    .line 1485
    const-string v5, "AlarmDetail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "YKYU calAlarmTime currentAlarmTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const-string v5, "AlarmDetail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "YKYU calAlarmTime setAlarmTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_78
    if-nez p1, :cond_ab

    .line 1490
    sget-boolean v5, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v5, :cond_85

    .line 1491
    const-string v5, "AlarmDetail"

    const-string v6, "YKYU calAlarmTime -1-"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_85
    cmp-long v3, v0, v3

    if-lez v3, :cond_ac

    .line 1493
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v3, :cond_94

    .line 1494
    const-string v3, "AlarmDetail"

    const-string v4, "YKYU calAlarmTime -2-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_94
    :goto_94
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v3, :cond_9f

    .line 1503
    const-string v3, "AlarmDetail"

    const-string v4, "YKYU calAlarmTime -4-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_9f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-wide v0, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1505
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1506
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->changeCalendarDaytoAlarmDay(I)I

    move-result p1

    .line 1509
    :cond_ab
    return p1

    .line 1496
    :cond_ac
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v3, :cond_b7

    .line 1497
    const-string v3, "AlarmDetail"

    const-string v4, "YKYU calAlarmTime -3-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_b7
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1499
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1500
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_94
.end method

.method private cancelDetailChange()V
    .registers 4

    .prologue
    .line 1598
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1599
    const-string v0, "AlarmDetail"

    const-string v1, "cancelDetailChange() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_b
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1601
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1604
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->finish()V

    .line 1605
    return-void
.end method

.method private changeAlarmType(I)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x1002

    const/4 v3, 0x1

    .line 2671
    if-ltz p1, :cond_36

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_36

    .line 2672
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4d

    .line 2673
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2674
    if-eqz v0, :cond_16

    .line 2676
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2679
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2680
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    const-string v1, "com.samsung.SMT"

    const-string v2, "com.samsung.SMT.CheckVoiceData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2687
    const/16 v1, 0x1002

    :try_start_29
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_2c} :catch_37

    .line 2704
    :goto_2c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v3, :cond_5b

    .line 2705
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    .line 2710
    :cond_36
    :goto_36
    return-void

    .line 2688
    :catch_37
    move-exception v0

    .line 2691
    const-string v0, "AlarmDetail"

    const-string v1, "Samsung TTS is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2696
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2698
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c

    .line 2701
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput p1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 2702
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 2707
    :cond_5b
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    goto :goto_36
.end method

.method private changeCalendarDaytoAlarmDay(I)I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1462
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 1463
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1464
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YKYU changeCalendarDaytoAlarmDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x4

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_2d
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x4

    shl-int v0, v3, v0

    return v0
.end method

.method private doPickRingtone()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 3168
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3170
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3172
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3174
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3176
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3181
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 3182
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3197
    :goto_36
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3199
    const/16 v0, 0x1005

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3200
    return-void

    .line 3191
    :cond_41
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_36
.end method

.method private fillEditData(Landroid/content/Intent;)V
    .registers 9
    .parameter

    .prologue
    const/16 v5, 0xc

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1292
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1293
    if-nez v0, :cond_e

    .line 1383
    :goto_d
    return-void

    .line 1296
    :cond_e
    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 1297
    invoke-virtual {v3, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 1299
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v0, :cond_136

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1312
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1316
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    iput-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 1322
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v5, 0x100

    if-ne v0, v5, :cond_15e

    move v0, v1

    :goto_64
    iput-boolean v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1324
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit8 v0, v0, 0x10

    const/16 v5, 0x10

    if-ne v0, v5, :cond_161

    move v0, v1

    :goto_73
    iput-boolean v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1326
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_164

    move v0, v1

    :goto_80
    iput-boolean v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 1334
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    if-eqz v0, :cond_a2

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1337
    :cond_a2
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1341
    const v1, 0x7f0e002f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1343
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v6, :cond_d2

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1351
    :cond_d2
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v0, :cond_167

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1363
    :goto_f9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    if-eqz v0, :cond_10c

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1367
    :cond_10c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 1369
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1370
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    if-eqz v1, :cond_183

    .line 1371
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v1, :cond_12f

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_17a

    .line 1372
    :cond_12f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1302
    :cond_136
    iget v0, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_14d

    .line 1303
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1306
    :goto_143
    iget v0, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v0, v0, 0x64

    if-ge v0, v5, :cond_159

    .line 1307
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_23

    .line 1305
    :cond_14d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xc

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_143

    .line 1309
    :cond_159
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_23

    :cond_15e
    move v0, v2

    .line 1322
    goto/16 :goto_64

    :cond_161
    move v0, v2

    .line 1324
    goto/16 :goto_73

    :cond_164
    move v0, v2

    .line 1326
    goto/16 :goto_80

    .line 1358
    :cond_167
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1359
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1360
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_f9

    .line 1374
    :cond_17a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1376
    :cond_183
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v1, :cond_199

    .line 1377
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1380
    :cond_199
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_d
.end method

.method private getContentValues()Landroid/content/ContentValues;
    .registers 9

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 1609
    const/4 v0, 0x0

    .line 1610
    .local v0, alarmType:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v3, :cond_c

    .line 1611
    or-int/lit16 v0, v0, 0x100

    .line 1612
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v3, :cond_14

    .line 1613
    or-int/lit8 v0, v0, 0x10

    .line 1614
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v3, :cond_1c

    .line 1615
    or-int/lit8 v0, v0, 0x1

    .line 1617
    :cond_1c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1619
    .local v1, c:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1621
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v2

    .line 1622
    .local v2, hour:I
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v3, :cond_c5

    .line 1623
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 1633
    :goto_45
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1634
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 1635
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 1636
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 1638
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1652
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1653
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 1654
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/Alarm;->SMART_ALARM_TONE:[I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    aget v4, v4, v5

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 1655
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1656
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_e4

    .line 1657
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 1661
    :goto_9f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v3, :cond_aa

    .line 1662
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v4, 0x3

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1664
    :cond_aa
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 1666
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v3, :cond_be

    .line 1667
    const-string v3, "AlarmDetail"

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_be
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    return-object v3

    .line 1625
    :cond_c5
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v2

    .line 1626
    if-ne v2, v7, :cond_ce

    .line 1627
    const/4 v2, 0x0

    .line 1628
    :cond_ce
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d5

    .line 1629
    add-int/lit8 v2, v2, 0xc

    .line 1630
    :cond_d5
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    mul-int/lit8 v4, v2, 0x64

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    goto/16 :goto_45

    .line 1659
    :cond_e4
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    goto :goto_9f
.end method

.method private getCurrentSettingTime()J
    .registers 8

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 1439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1441
    .local v0, c:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v1

    .line 1442
    .local v1, hour:I
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v2, :cond_41

    .line 1443
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 1453
    :goto_24
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1454
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 1455
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1456
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1458
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 1445
    :cond_41
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v1

    .line 1446
    if-ne v1, v6, :cond_4a

    .line 1447
    const/4 v1, 0x0

    .line 1448
    :cond_4a
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_51

    .line 1449
    add-int/lit8 v1, v1, 0xc

    .line 1450
    :cond_51
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    mul-int/lit8 v3, v1, 0x64

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    goto :goto_24
.end method

.method private getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 3229
    .line 3230
    if-nez p1, :cond_6

    .line 3315
    :cond_5
    :goto_5
    return-object v6

    .line 3237
    :cond_6
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3242
    :try_start_12
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3244
    if-eqz v1, :cond_f4

    .line 3245
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 3246
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_36} :catch_ea

    move-result-object v0

    .line 3253
    :goto_37
    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3a} :catch_ed

    :goto_3a
    move-object v6, v0

    .line 3257
    goto :goto_5

    .line 3263
    :cond_3c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3267
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3270
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3275
    if-eqz v0, :cond_a6

    .line 3276
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_a3

    .line 3277
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 3284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3288
    :cond_a3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3292
    :cond_a6
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3297
    if-eqz v0, :cond_5

    .line 3298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3299
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_e5

    .line 3301
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3311
    :cond_e5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3255
    :catch_ea
    move-exception v0

    goto/16 :goto_5

    :catch_ed
    move-exception v1

    move-object v6, v0

    goto/16 :goto_5

    :cond_f1
    move-object v0, v6

    goto/16 :goto_37

    :cond_f4
    move-object v0, v6

    goto/16 :goto_3a
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .registers 4
    .parameter "pickedUri"

    .prologue
    .line 3206
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3223
    :cond_8
    :goto_8
    return-void

    .line 3215
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 3219
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 876
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 877
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 878
    const v2, 0x7f03002f

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 881
    invoke-direct {p0, p1, v3, v3, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 884
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;

    .line 885
    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->setParentActivity(Landroid/app/Activity;)V

    .line 888
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;

    .line 889
    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->setParentActivity(Landroid/app/Activity;)V

    .line 890
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatTypeLinear:Landroid/widget/LinearLayout;

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatTypeLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_59

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatTypeLinear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 895
    :cond_59
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    if-eqz v0, :cond_91

    .line 897
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 951
    :cond_91
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 952
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$8;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 968
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    const v1, 0x7f0e002f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 976
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    const v1, 0x7f0e002c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm:Landroid/widget/LinearLayout;

    .line 1022
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    const v1, 0x7f0e0021

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->leftVolume:Landroid/widget/ImageView;

    .line 1037
    const v1, 0x7f0e0023

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->rightVolume:Landroid/widget/ImageView;

    .line 1038
    const v1, 0x7f0e0022

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    .line 1039
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1040
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1118
    const v1, 0x7f0e0031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 1119
    if-eqz v1, :cond_13d

    .line 1120
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1132
    :cond_13d
    const v1, 0x7f0e000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 1133
    if-eqz v1, :cond_150

    .line 1134
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$14;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    :cond_150
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    or-int/lit8 v2, v2, 0x0

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1156
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v1, :cond_19e

    .line 1157
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_17e

    .line 1158
    const-string v1, "haeju"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YKYU result = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_17e
    const-string v1, "haeju"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YKYU mItem.repeatType = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_19e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    or-int/lit8 v2, v2, 0x5

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1174
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1175
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1176
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1178
    const v1, 0x7f0e0020

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    .line 1179
    const v1, 0x7f0e0026

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    .line 1181
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1182
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    .line 1183
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v1, :cond_23a

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1189
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1194
    :goto_1ff
    const v1, 0x7f0e001c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmRepeatType:Landroid/view/View;

    .line 1195
    const v1, 0x7f0e001f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeBox:Landroid/view/View;

    .line 1196
    const v1, 0x7f0e0025

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneBox:Landroid/view/View;

    .line 1197
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeBox:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$15;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneBox:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$16;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$16;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-nez v1, :cond_239

    .line 1209
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1212
    :cond_239
    return-void

    .line 1191
    :cond_23a
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_1ff
.end method

.method private initRingtoneString()V
    .registers 5

    .prologue
    .line 2436
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 2438
    .local v0, rm:Landroid/media/RingtoneManager;
    if-eqz v0, :cond_26

    .line 2439
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 2441
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_25

    .line 2442
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 2446
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2469
    .end local v1           #uri:Landroid/net/Uri;
    :cond_25
    :goto_25
    return-void

    .line 2449
    :cond_26
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_25
.end method

.method private initTime(Landroid/content/Context;III)V
    .registers 14
    .parameter "context"
    .parameter "hour"
    .parameter "min"
    .parameter "ampm"

    .prologue
    .line 710
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 712
    .local v3, c:Ljava/util/Calendar;
    move v4, p2

    .line 713
    .local v4, currentHour:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_e

    .line 714
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 715
    :cond_e
    move v5, p3

    .line 716
    .local v5, currentMinute:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_18

    .line 717
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 719
    :cond_18
    iput p4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 720
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_28

    .line 721
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 722
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 731
    :cond_28
    :goto_28
    const v6, 0x7f0e0127

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 732
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v7, "Increment Hour"

    const-string v8, "Decrement Hour"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 733
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setSpeedVariable(Z)V

    .line 734
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v6, :cond_e1

    .line 735
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x0

    const/16 v8, 0x17

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 736
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V

    .line 746
    :goto_55
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v6, :cond_f2

    .line 747
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v7, v4, 0x18

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 755
    :goto_60
    const v6, 0x7f0e0128

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 756
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v7, "Increment Minute"

    const-string v8, "Decrement Minute"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 757
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setSpeedVariable(Z)V

    .line 758
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 759
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V

    .line 760
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 769
    const v6, 0x7f0e0129

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 770
    .local v2, ampmBtn:Landroid/widget/Button;
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v6, :cond_108

    .line 771
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 799
    :goto_a0
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const v7, 0x7f0e00e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 801
    .local v0, EditTextHour:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const v7, 0x7f0e00e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 803
    .local v1, EditTextMin:Landroid/widget/EditText;
    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 824
    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 841
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 842
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 843
    return-void

    .line 724
    .end local v0           #EditTextHour:Landroid/widget/EditText;
    .end local v1           #EditTextMin:Landroid/widget/EditText;
    .end local v2           #ampmBtn:Landroid/widget/Button;
    :cond_cf
    const/16 v6, 0xc

    if-lt v4, v6, :cond_d7

    const/16 v6, 0x18

    if-ne v4, v6, :cond_dc

    .line 725
    :cond_d7
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_28

    .line 727
    :cond_dc
    const/4 v6, 0x2

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_28

    .line 738
    :cond_e1
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x1

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 740
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V

    goto/16 :goto_55

    .line 749
    :cond_f2
    rem-int/lit8 v6, v4, 0xc

    if-nez v6, :cond_ff

    .line 750
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto/16 :goto_60

    .line 752
    :cond_ff
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v7, v4, 0xc

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto/16 :goto_60

    .line 773
    .restart local v2       #ampmBtn:Landroid/widget/Button;
    :cond_108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 775
    const/high16 v6, 0x41f0

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 777
    :cond_121
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 778
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13a

    .line 779
    const v6, 0x7f0b0026

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 782
    :cond_130
    :goto_130
    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a0

    .line 780
    :cond_13a
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_130

    .line 781
    const v6, 0x7f0b0027

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_130
.end method

.method private initTimeTitle()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 846
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    .line 847
    .local v1, currentHour:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v2

    .line 848
    .local v2, currentMinute:I
    const-string v0, ""

    .line 849
    .local v0, ampmStr:Ljava/lang/String;
    const-string v3, ""

    .line 850
    .local v3, now:Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v5, v9, :cond_7c

    .line 851
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    :cond_22
    :goto_22
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v5, :cond_8c

    .line 857
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 864
    :goto_3c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 865
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 869
    :goto_6d
    const v5, 0x7f0e0126

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 870
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_7b

    .line 871
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :cond_7b
    return-void

    .line 852
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_7c
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v5, v7, :cond_22

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 859
    :cond_8c
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d:%02d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 867
    :cond_a3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6d
.end method

.method private declared-synchronized saveDetailChange()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1513
    monitor-enter p0

    :try_start_6
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1514
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDetailChange() called mSubmitted = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1516
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_151

    if-eqz v0, :cond_30

    .line 1595
    :goto_2e
    monitor-exit p0

    return-void

    .line 1518
    :cond_30
    const/4 v0, 0x1

    :try_start_31
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    .line 1520
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1521
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1523
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v0, :cond_154

    .line 1524
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1529
    :goto_4b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    .line 1531
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->calAlarmTime(I)I

    move-result v0

    .line 1535
    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x10

    or-int/2addr v0, v5

    .line 1536
    const-string v1, "haeju"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 1539
    or-int/lit8 v0, v0, 0x5

    .line 1543
    :goto_80
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1544
    const-string v1, "haeju"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const-string v0, "haeju"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mItem.repeatType = 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1550
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1552
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d7
    .catchall {:try_start_31 .. :try_end_d7} :catchall_151

    .line 1556
    :try_start_d7
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-eqz v0, :cond_df

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-ne v0, v7, :cond_15f

    .line 1557
    :cond_df
    const-string v0, "alarm"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1567
    :cond_ea
    :goto_ea
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ed
    .catchall {:try_start_d7 .. :try_end_ed} :catchall_19b

    .line 1569
    :try_start_ed
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1572
    sget-boolean v5, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v5, :cond_10c

    .line 1573
    const-string v5, "AlarmDetail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDetailChange transaction result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_10c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1577
    cmp-long v0, v0, v2

    if-lez v0, :cond_127

    .line 1578
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 1583
    :cond_127
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 1585
    const-string v0, "GATE"

    const-string v1, "<GATE-M>ALARM_CREATED :  </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_134
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 1590
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->saveMsg()V

    .line 1591
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1592
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1594
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->finish()V
    :try_end_14f
    .catchall {:try_start_ed .. :try_end_14f} :catchall_151

    goto/16 :goto_2e

    .line 1513
    :catchall_151
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1526
    :cond_154
    :try_start_154
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I
    :try_end_159
    .catchall {:try_start_154 .. :try_end_159} :catchall_151

    goto/16 :goto_4b

    .line 1541
    :cond_15b
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_80

    .line 1559
    :cond_15f
    :try_start_15f
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-ne v0, v6, :cond_1a0

    .line 1560
    const-string v0, "alarm"

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v6, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 1563
    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z

    if-eqz v5, :cond_ea

    cmp-long v5, v0, v2

    if-nez v5, :cond_ea

    .line 1564
    const-string v0, "alarm"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_198
    .catchall {:try_start_15f .. :try_end_198} :catchall_19b

    move-result-wide v0

    goto/16 :goto_ea

    .line 1569
    :catchall_19b
    move-exception v0

    :try_start_19c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_1a0
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_151

    :cond_1a0
    move-wide v0, v2

    goto/16 :goto_ea
.end method

.method private saveMsg()V
    .registers 13

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v0, :cond_99

    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-wide v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1394
    const-wide/32 v2, 0x36ee80

    div-long v2, v0, v2

    .line 1395
    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    rem-long v7, v0, v4

    .line 1396
    const-wide/16 v0, 0x18

    div-long v9, v2, v0

    .line 1397
    const-wide/16 v0, 0x18

    rem-long/2addr v2, v0

    .line 1402
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-nez v0, :cond_9a

    const-string v0, ""

    move-object v6, v0

    .line 1406
    :goto_34
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_bd

    const-string v0, ""

    move-object v5, v0

    .line 1410
    :goto_3d
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_e1

    const-string v0, ""

    move-object v4, v0

    .line 1414
    :goto_46
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_105

    const/4 v0, 0x1

    move v1, v0

    .line 1415
    :goto_4e
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_109

    const/4 v0, 0x1

    move v3, v0

    .line 1416
    :goto_56
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_10d

    const/4 v0, 0x1

    move v2, v0

    .line 1418
    :goto_5e
    if-eqz v1, :cond_111

    const/4 v0, 0x1

    move v1, v0

    :goto_62
    if-eqz v3, :cond_115

    const/4 v0, 0x2

    :goto_65
    or-int/2addr v1, v0

    if-eqz v2, :cond_118

    const/4 v0, 0x4

    :goto_69
    or-int/2addr v0, v1

    .line 1421
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1424
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_DIRECTSAVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1425
    const-string v3, "save_msg"

    aget-object v0, v1, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    const/4 v6, 0x1

    aput-object v4, v1, v6

    const/4 v4, 0x2

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 1435
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->finish()V

    .line 1437
    :cond_99
    return-void

    .line 1402
    :cond_9a
    const-wide/16 v0, 0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_a9

    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_34

    :cond_a9
    const v0, 0x7f0b0043

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_34

    .line 1406
    :cond_bd
    const-wide/16 v0, 0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_cd

    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_3d

    :cond_cd
    const v0, 0x7f0b0047

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_3d

    .line 1410
    :cond_e1
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_f1

    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_46

    :cond_f1
    const v0, 0x7f0b0045

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_46

    .line 1414
    :cond_105
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4e

    .line 1415
    :cond_109
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_56

    .line 1416
    :cond_10d
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_5e

    .line 1418
    :cond_111
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_62

    :cond_115
    const/4 v0, 0x0

    goto/16 :goto_65

    :cond_118
    const/4 v0, 0x0

    goto/16 :goto_69
.end method

.method private setEnableField(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2663
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->leftVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2664
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->rightVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2667
    return-void
.end method

.method private setRingtoneTitle(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2525
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2531
    const-string v1, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2532
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2533
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2542
    :goto_24
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2570
    return-void

    .line 2537
    :cond_2a
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private setSmartButtonText()V
    .registers 6

    .prologue
    const v2, 0x7f0b0051

    const v1, 0x7f0b004c

    .line 3111
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3114
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    packed-switch v3, :pswitch_data_6c

    .line 3136
    :goto_16
    :pswitch_16
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    packed-switch v3, :pswitch_data_7a

    .line 3160
    :goto_1d
    :pswitch_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3162
    return-void

    .line 3116
    :pswitch_48
    const v1, 0x7f0b004b

    .line 3117
    goto :goto_16

    .line 3122
    :pswitch_4c
    const v1, 0x7f0b004d

    .line 3123
    goto :goto_16

    .line 3125
    :pswitch_50
    const v1, 0x7f0b004e

    .line 3126
    goto :goto_16

    .line 3128
    :pswitch_54
    const v1, 0x7f0b004f

    .line 3129
    goto :goto_16

    .line 3141
    :pswitch_58
    const v2, 0x7f0b0052

    .line 3142
    goto :goto_1d

    .line 3144
    :pswitch_5c
    const v2, 0x7f0b0056

    .line 3145
    goto :goto_1d

    .line 3147
    :pswitch_60
    const v2, 0x7f0b0053

    .line 3148
    goto :goto_1d

    .line 3150
    :pswitch_64
    const v2, 0x7f0b0054

    .line 3151
    goto :goto_1d

    .line 3153
    :pswitch_68
    const v2, 0x7f0b0055

    .line 3154
    goto :goto_1d

    .line 3114
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_16
        :pswitch_4c
        :pswitch_50
        :pswitch_54
    .end packed-switch

    .line 3136
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
        :pswitch_68
    .end packed-switch
.end method

.method private setSnoozeButtonText()V
    .registers 6

    .prologue
    const v2, 0x7f0b0068

    const v1, 0x7f0b0060

    .line 3053
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3056
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    packed-switch v3, :pswitch_data_68

    .line 3081
    :goto_16
    :pswitch_16
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    packed-switch v3, :pswitch_data_76

    .line 3105
    :goto_1d
    :pswitch_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3107
    return-void

    .line 3058
    :pswitch_48
    const v1, 0x7f0b005e

    .line 3059
    goto :goto_16

    .line 3061
    :pswitch_4c
    const v1, 0x7f0b005f

    .line 3062
    goto :goto_16

    .line 3067
    :pswitch_50
    const v1, 0x7f0b0061

    .line 3068
    goto :goto_16

    .line 3070
    :pswitch_54
    const v1, 0x7f0b0062

    .line 3071
    goto :goto_16

    .line 3083
    :pswitch_58
    const v2, 0x7f0b0064

    .line 3084
    goto :goto_1d

    .line 3086
    :pswitch_5c
    const v2, 0x7f0b0065

    .line 3087
    goto :goto_1d

    .line 3089
    :pswitch_60
    const v2, 0x7f0b0066

    .line 3090
    goto :goto_1d

    .line 3092
    :pswitch_64
    const v2, 0x7f0b0067

    .line 3093
    goto :goto_1d

    .line 3056
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4c
        :pswitch_16
        :pswitch_50
        :pswitch_54
    .end packed-switch

    .line 3081
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
        :pswitch_1d
    .end packed-switch
.end method

.method private updateRepeatDaysColor()V
    .registers 4

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_60

    .line 2060
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2065
    :goto_f
    const-string v0, "haeju"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItem.repeatType >> 4 = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    shr-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v0, "haeju"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItem.repeatType = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 2068
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatType()V

    .line 2070
    return-void

    .line 2063
    :cond_60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_f
.end method

.method private updateRepeatType()V
    .registers 4

    .prologue
    .line 2075
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    .line 2076
    .local v0, checkDay:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->calAlarmTime(I)I

    move-result v0

    .line 2077
    const/4 v1, 0x0

    .line 2078
    .local v1, result:I
    shl-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v1, v2

    .line 2081
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2082
    or-int/lit8 v1, v1, 0x5

    .line 2086
    :goto_1a
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 2087
    return-void

    .line 2084
    :cond_1f
    or-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method private validRingtoneStr(Ljava/lang/String;)Z
    .registers 13
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 436
    const/4 v8, 0x0

    .line 437
    .local v8, retVal:Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 441
    .local v10, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 442
    .local v7, fp:Ljava/io/File;
    if-eqz v10, :cond_119

    .line 443
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, scheme:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_3f

    .line 451
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " scheme:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_3f
    if-eqz v9, :cond_49

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 453
    :cond_49
    new-instance v7, Ljava/io/File;

    .end local v7           #fp:Ljava/io/File;
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v7       #fp:Ljava/io/File;
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_5f

    .line 455
    const-string v0, "AlarmDetail"

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_5f
    if-eqz v7, :cond_8e

    .line 457
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 458
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_8d

    .line 459
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File exist : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_8d
    const/4 v8, 0x1

    .line 467
    :cond_8e
    :goto_8e
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_b2

    .line 468
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri.decode(uri.toString()) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_b2
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 475
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_119

    .line 476
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_109

    .line 477
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getColumeCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_109
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_116

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_116

    .line 480
    const/4 v8, 0x1

    .line 481
    :cond_116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #scheme:Ljava/lang/String;
    :cond_119
    return v8

    .line 462
    .restart local v9       #scheme:Ljava/lang/String;
    :cond_11a
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_8e

    .line 463
    const-string v0, "AlarmDetail"

    const-string v1, "fp is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e
.end method

.method private volumeKeyEvent(I)Z
    .registers 7
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3017
    sparse-switch p1, :sswitch_data_4a

    .line 3046
    :cond_6
    :goto_6
    return v2

    .line 3020
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v4, v3, :cond_f

    move v2, v3

    .line 3022
    goto :goto_6

    .line 3025
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3027
    .local v0, i:I
    const/16 v4, 0x18

    if-ne p1, v4, :cond_35

    .line 3028
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_1e

    move v0, v1

    .line 3032
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3033
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_2e

    .line 3034
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 3035
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    move v2, v3

    .line 3036
    goto :goto_6

    .line 3030
    :cond_35
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3a

    move v0, v2

    :cond_3a
    goto :goto_1e

    .line 3039
    .end local v0           #i:I
    :sswitch_3b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    .line 3040
    goto :goto_6

    .line 3017
    nop

    :sswitch_data_4a
    .sparse-switch
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x52 -> :sswitch_3b
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1682
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1686
    packed-switch p1, :pswitch_data_126

    .line 1835
    :cond_9
    :goto_9
    return-void

    .line 1688
    :pswitch_a
    if-ne p2, v1, :cond_9

    .line 1691
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1692
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_9

    .line 1696
    :pswitch_18
    and-int/lit8 v0, p2, 0xf

    if-eqz v0, :cond_9

    .line 1700
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 1701
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 1702
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSnoozeButtonText()V

    .line 1703
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1704
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1705
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    goto :goto_9

    .line 1712
    :pswitch_40
    and-int/lit8 v0, p2, 0xf

    if-eqz v0, :cond_9

    .line 1715
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1716
    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1720
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_9

    .line 1733
    :pswitch_6e
    if-eq p2, v2, :cond_9e

    .line 1735
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1736
    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1737
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$17;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1748
    const v1, 0x7f0b002e

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1786
    const v1, 0x7f0b002c

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1793
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_9

    .line 1796
    :cond_9e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1797
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1798
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    goto/16 :goto_9

    .line 1803
    :pswitch_b0
    and-int/lit8 v0, p2, 0xf

    .line 1804
    if-eqz v0, :cond_9

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput p2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1808
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatDaysColor()V

    goto/16 :goto_9

    .line 1812
    :pswitch_bd
    and-int/lit8 v0, p2, 0xf

    if-eqz v0, :cond_9

    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 1817
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 1818
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSmartButtonText()V

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    if-eqz v0, :cond_f4

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1823
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1827
    :cond_f4
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1828
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItem.subdueTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1686
    :pswitch_data_126
    .packed-switch 0x1000
        :pswitch_18
        :pswitch_40
        :pswitch_6e
        :pswitch_bd
        :pswitch_b0
        :pswitch_a
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 1677
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1678
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const v10, 0x7f0e00e4

    .line 1215
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1, v10}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1224
    const-string v3, ""

    .line 1225
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    .line 1226
    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v5

    .line 1229
    if-nez v4, :cond_33

    if-eqz v5, :cond_4c

    .line 1231
    :cond_33
    if-eqz v5, :cond_bd

    .line 1234
    :goto_35
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    if-ne v0, v6, :cond_b9

    move v0, v2

    .line 1236
    :goto_40
    if-nez v0, :cond_bb

    .line 1237
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 1240
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v6

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v7

    .line 1242
    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 1243
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1244
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1256
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1257
    const v9, 0x7f03002f

    invoke-virtual {v1, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1259
    invoke-direct {p0, p0, v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V

    .line 1260
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 1262
    if-nez v4, :cond_7e

    if-eqz v5, :cond_9f

    .line 1263
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 1264
    if-eqz v5, :cond_84

    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 1267
    :cond_84
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->requestFocus()Z

    .line 1268
    if-nez v2, :cond_9f

    .line 1269
    invoke-virtual {v0, v10}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1270
    if-eqz v0, :cond_9f

    .line 1271
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1282
    :cond_9f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1286
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setTitle(I)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1289
    return-void

    .line 1234
    :cond_b9
    const/4 v0, 0x1

    goto :goto_40

    :cond_bb
    move v2, v0

    goto :goto_4c

    :cond_bd
    move-object v1, v0

    goto/16 :goto_35
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 500
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->requestWindowFeature(I)Z

    .line 501
    const v10, 0x7f030004

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setContentView(I)V

    .line 503
    const v10, 0x7f0e001b

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    .line 505
    const v10, 0x7f0e001d

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    .line 507
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    new-instance v11, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$3;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    const v10, 0x7f0e0015

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    .line 516
    const v10, 0x7f0e0031

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 518
    const v10, 0x7f0e000c

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 521
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 522
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v10, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v10, "volume_change"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v10, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v2, filefilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v10, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v10, "file"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 531
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v10, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 533
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v10, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 538
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, startType:Ljava/lang/String;
    const-string v10, "alarm_create"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_164

    .line 540
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    .line 546
    :cond_9e
    :goto_9e
    const-string v10, "AlarmDetail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDetailType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v10, "alarm_uri"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    .line 551
    const-string v10, "alarm_name"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    .line 553
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    .line 554
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    .line 555
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 556
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldVolume:I

    .line 557
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioMode:I

    .line 558
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneVol:I

    .line 560
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    .line 561
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    .line 562
    new-instance v10, Landroid/media/RingtoneManager;

    invoke-direct {v10, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 563
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v10, :cond_113

    .line 564
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/media/RingtoneManager;->setType(I)V

    .line 566
    :cond_113
    invoke-direct {p0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V

    .line 568
    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_182

    .line 569
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->fillEditData(Landroid/content/Intent;)V

    .line 570
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17e

    .line 571
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setRingtoneTitle(Ljava/lang/String;)V

    .line 633
    :cond_12b
    :goto_12b
    new-instance v7, Landroid/media/RingtoneManager;

    invoke-direct {v7, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 634
    .local v7, rm:Landroid/media/RingtoneManager;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x5

    invoke-static {v10, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 636
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_271

    .line 637
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 644
    :goto_147
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSnoozeButtonText()V

    .line 645
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSmartButtonText()V

    .line 647
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;

    .line 651
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v10, v10, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_27d

    .line 652
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    .line 657
    :goto_160
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 693
    return-void

    .line 541
    .end local v7           #rm:Landroid/media/RingtoneManager;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_164
    const-string v10, "alarm_edit"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_171

    .line 542
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    goto/16 :goto_9e

    .line 543
    :cond_171
    const-string v10, "alarm_create_direct"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 544
    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    goto/16 :goto_9e

    .line 573
    :cond_17e
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V

    goto :goto_12b

    .line 583
    :cond_182
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v10, :cond_24d

    .line 584
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v11, -0x1

    iput v11, v10, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 585
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setRingtoneTitle(Ljava/lang/String;)V

    .line 590
    :goto_190
    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12b

    .line 591
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 592
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 594
    const/4 v5, -0x1

    .line 595
    .local v5, nHour:I
    const/4 v6, -0x1

    .line 597
    .local v6, nMinutes:I
    const-string v10, "android.intent.extra.alarm.HOUR"

    const/16 v11, 0xb

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 598
    const-string v10, "android.intent.extra.alarm.MINUTES"

    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 600
    const-string v10, "AlarmDetail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nHour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v10, "AlarmDetail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nMinutes = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-ltz v5, :cond_1f6

    const/16 v10, 0x17

    if-gt v5, v10, :cond_1f6

    if-ltz v6, :cond_1f6

    const/16 v10, 0x3b

    if-le v6, v10, :cond_232

    .line 606
    :cond_1f6
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 607
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 608
    const-string v10, "AlarmDetail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "after nHour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v10, "AlarmDetail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "after nMinutes = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_232
    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v10, :cond_252

    .line 613
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 624
    :goto_23b
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v10, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 626
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    const-string v11, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12b

    .line 587
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v5           #nHour:I
    .end local v6           #nMinutes:I
    :cond_24d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V

    goto/16 :goto_190

    .line 615
    .restart local v1       #calendar:Ljava/util/Calendar;
    .restart local v5       #nHour:I
    .restart local v6       #nMinutes:I
    :cond_252
    rem-int/lit8 v10, v5, 0xc

    if-nez v10, :cond_265

    .line 616
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 619
    :goto_25d
    const/16 v10, 0xc

    if-ge v5, v10, :cond_26d

    .line 620
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto :goto_23b

    .line 618
    :cond_265
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v11, v5, 0xc

    invoke-virtual {v10, v11}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_25d

    .line 622
    :cond_26d
    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto :goto_23b

    .line 639
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v5           #nHour:I
    .end local v6           #nMinutes:I
    .restart local v7       #rm:Landroid/media/RingtoneManager;
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_271
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    sget-object v11, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->alarmogg:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    goto/16 :goto_147

    .line 654
    :cond_27d
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    goto/16 :goto_160
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2090
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 2091
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog id = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_21
    packed-switch p1, :pswitch_data_7c

    .line 2340
    :goto_24
    return-object v0

    .line 2094
    :pswitch_25
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$21;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$21;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_24

    .line 2121
    :pswitch_52
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->doPickRingtone()V

    goto :goto_24

    .line 2265
    :pswitch_56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$23;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$23;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070010

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_24

    .line 2092
    :pswitch_data_7c
    .packed-switch 0x1100
        :pswitch_25
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 701
    const/16 v0, 0x1102

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 705
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 706
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 707
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3006
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 3007
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..onKeyDown.. keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_1c
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->volumeKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3010
    const/4 v0, 0x1

    .line 3012
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b0026

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 2869
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 2870
    const-string v0, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..onKeyUp.. keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_23
    packed-switch p1, :pswitch_data_236

    .line 3002
    :cond_26
    :goto_26
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_2a
    return v0

    .line 2874
    :pswitch_2b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v1, :cond_33

    move v0, v1

    .line 2876
    goto :goto_2a

    .line 2878
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v7, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2880
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_26

    .line 2881
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21b

    .line 2884
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2887
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2888
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_76

    .line 2889
    :cond_69
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2891
    :cond_76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 2893
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2895
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2896
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v1, :cond_114

    .line 2897
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2908
    :cond_a4
    :goto_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2977
    :cond_f2
    :goto_f2
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_26

    .line 2979
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 2981
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v7, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2985
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2986
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->play()V

    goto/16 :goto_26

    .line 2901
    :cond_114
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v6, :cond_a4

    .line 2902
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a4

    .line 2929
    :cond_128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 2931
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2932
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 2933
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v1, :cond_1a9

    .line 2934
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b006f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2940
    :cond_159
    :goto_159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f2

    .line 2936
    :cond_1a9
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v6, :cond_159

    .line 2937
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0070

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_159

    .line 2953
    :cond_1bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2963
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 2964
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v1, :cond_207

    .line 2965
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f2

    .line 2969
    :cond_207
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v6, :cond_f2

    .line 2970
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f2

    .line 2989
    :cond_21b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v7, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2993
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_26

    .line 2871
    nop

    :pswitch_data_236
    .packed-switch 0x18
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2817
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_b

    .line 2818
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 2819
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2820
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2821
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    .line 2826
    :goto_1e
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldAudioStream:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setVolumeControlStream(I)V

    .line 2829
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2830
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 2831
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_38

    .line 2832
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 2837
    :cond_38
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2841
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_47

    .line 2842
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2846
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 2847
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatType()V

    .line 2849
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2850
    return-void

    .line 2824
    :cond_53
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    goto :goto_1e
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1971
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1972
    const-string v0, "alarm_detail_ampm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v1, "alarm_detail_repeat_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1974
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v1, "alarm_sound_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1975
    const-string v0, "alarm_sound_type_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1976
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 1977
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v1, "alarm_sound_tone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1979
    const-string v0, "alarm_sound_tone_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1980
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    .line 1981
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1982
    :cond_50
    const-string v0, "alarm_sound_tone_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1983
    const-string v0, "alarm_noti_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1984
    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_68

    .line 1985
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1986
    :cond_68
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_72

    .line 1987
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1988
    :cond_72
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_7a

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1991
    :cond_7a
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1995
    const v0, 0x7f0e002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1998
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v1, "alarm_hour"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1999
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v1, "alarm_minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 2001
    const-string v0, "alarm_noti_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2002
    and-int/lit8 v1, v0, 0xf

    .line 2003
    if-lez v1, :cond_c0

    .line 2004
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 2005
    :cond_c0
    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 2006
    if-lez v0, :cond_cc

    .line 2007
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 2009
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->changeAlarmType(I)V

    .line 2010
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->DEBUG:Z

    if-eqz v0, :cond_f3

    .line 2011
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " alarmSoundType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_f3
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x2

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1839
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1844
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    if-eqz v0, :cond_3b

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_2f

    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1848
    const/16 v0, 0x1102

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 1851
    :cond_2f
    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I

    .line 1852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedUri:Landroid/net/Uri;

    .line 1853
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    .line 1855
    const/16 v0, 0x1102

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->showDialog(I)V

    .line 1859
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldAudioStream:I

    .line 1860
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setVolumeControlStream(I)V

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    if-eqz v0, :cond_53

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1864
    :cond_53
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-ne v0, v5, :cond_64

    .line 1865
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setRingtoneTitle(Ljava/lang/String;)V

    .line 1872
    :cond_64
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1873
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-eqz v0, :cond_c1

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v0

    .line 1875
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 1877
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed 24Hour mode. prev mAMPM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v1, v7, :cond_df

    .line 1880
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_d7

    .line 1881
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1892
    :goto_a2
    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 1894
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 1896
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed 24Hour mode. current mAMPM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_c1
    :goto_c1
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1933
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v1, :cond_153

    .line 1934
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1950
    :cond_d3
    :goto_d3
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatDaysColor()V

    .line 1967
    return-void

    .line 1883
    :cond_d7
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_a2

    .line 1886
    :cond_df
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_e9

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_a2

    .line 1889
    :cond_e9
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_a2

    .line 1902
    :cond_ef
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v0, :cond_c1

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v0

    .line 1904
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 1906
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed 24Hour mode. prev mAMPM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    if-lt v0, v6, :cond_11e

    const/16 v1, 0x18

    if-ne v0, v1, :cond_148

    .line 1909
    :cond_11e
    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 1913
    :goto_120
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_14b

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1919
    :goto_129
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 1921
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed 24Hour mode. current mAMPM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 1911
    :cond_148
    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto :goto_120

    .line 1916
    :cond_14b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v0, v0, 0xc

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_129

    .line 1937
    :cond_153
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1939
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 1941
    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1944
    :cond_16f
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v1, v5, :cond_17b

    .line 1945
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_d3

    .line 1946
    :cond_17b
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v1, v7, :cond_d3

    .line 1947
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_d3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2016
    const-string v0, "alarm_detail_ampm"

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2017
    const-string v0, "alarm_detail_repeat_type"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2018
    const-string v0, "alarm_sound_type"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2019
    const-string v0, "alarm_sound_type_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const-string v0, "alarm_sound_tone"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2022
    const-string v0, "alarm_sound_tone_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    const-string v0, "alarm_sound_tone_uri"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_94

    .line 2027
    const/16 v0, 0x100

    .line 2028
    :goto_50
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v2, :cond_58

    .line 2029
    or-int/lit8 v0, v0, 0x10

    .line 2030
    :cond_58
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v2, :cond_60

    .line 2031
    or-int/lit8 v0, v0, 0x1

    .line 2032
    :cond_60
    const-string v2, "alarm_noti_type"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2035
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    add-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    .line 2036
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 2037
    const-string v1, "alarm_noti_values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2043
    const-string v0, "alarm_hour"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2044
    const-string v0, "alarm_minute"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2046
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2047
    return-void

    :cond_94
    move v0, v1

    goto :goto_50
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    .line 492
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 2856
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 2857
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 2862
    :cond_10
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2865
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2866
    return-void
.end method

.method public stopPlayer()V
    .registers 3

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 2801
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 2802
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 2813
    :cond_10
    :goto_10
    return-void

    .line 2810
    :cond_11
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    goto :goto_10
.end method
