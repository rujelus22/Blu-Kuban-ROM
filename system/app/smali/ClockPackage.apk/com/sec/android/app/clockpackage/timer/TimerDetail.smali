.class public Lcom/sec/android/app/clockpackage/timer/TimerDetail;
.super Landroid/app/Activity;
.source "TimerDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;,
        Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;
    }
.end annotation


# static fields
.field private static alarmogg:Ljava/lang/String;

.field private static alarmogg_kor:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private isPause:Z

.field private isPopup:Z

.field private isSaved:Z

.field private leftVolume:Landroid/widget/ImageView;

.field private mAlarmName:Landroid/widget/EditText;

.field private mAlarmTone:Landroid/widget/TextView;

.field private mAlarmToneBox:Landroid/view/View;

.field private mAlarmToneStr:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDetailType:I

.field private mErrorRingtoneManager:Z

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mNeedSavePopup:Z

.field private mOldAudioStream:I

.field private mOldVolume:I

.field private mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

.field mRingtoneDlg:Landroid/app/AlertDialog;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSetAsUri:Ljava/lang/String;

.field private mSmartToast:Landroid/widget/Toast;

.field private mSubmitted:Z

.field private mToast:Landroid/widget/Toast;

.field private mVolIntent:Landroid/content/Intent;

.field private mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

.field private mVolumeValue:I

.field private rightVolume:Landroid/widget/ImageView;

.field private vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string v0, "content%3A%2F%2Fmedia%2Finternal%2Faudio%2Fmedia%2F16"

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    .line 67
    const-string v0, "content://media/internal/audio/media/15"

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg_kor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const-string v0, "TimerDetail"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->DEBUG:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z

    .line 104
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPause:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isSaved:Z

    .line 133
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPopup:Z

    .line 136
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    .line 144
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 146
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 952
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->saveDetailChange()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->cancelDetailChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    return-object v0
.end method

.method private cancelDetailChange()V
    .registers 4

    .prologue
    .line 525
    const-string v1, "TimerDetail"

    const-string v2, "cancelDetailChange() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 527
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 528
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->finish()V

    .line 532
    return-void
.end method

.method private doPickRingtone()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 1095
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1099
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1103
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1115
    :goto_36
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1117
    const/16 v0, 0x1005

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1118
    return-void

    .line 1111
    :cond_41
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_36
.end method

.method private getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1132
    .line 1133
    if-nez p1, :cond_6

    .line 1191
    :cond_5
    :goto_5
    return-object v6

    .line 1136
    :cond_6
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1138
    :try_start_12
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getApplicationContext()Landroid/content/Context;

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

    .line 1140
    if-eqz v1, :cond_f4

    .line 1141
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1142
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_36} :catch_ea

    move-result-object v0

    .line 1144
    :goto_37
    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3a} :catch_ed

    :goto_3a
    move-object v6, v0

    .line 1148
    goto :goto_5

    .line 1151
    :cond_3c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1155
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1160
    if-eqz v0, :cond_a6

    .line 1161
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_a3

    .line 1162
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1164
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

    .line 1166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1170
    :cond_a3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_a6
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1179
    if-eqz v0, :cond_5

    .line 1180
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1181
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_e5

    .line 1183
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1187
    :cond_e5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1146
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
    .line 1122
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1128
    :cond_8
    :goto_8
    return-void

    .line 1125
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 389
    const v3, 0x7f0e0017

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;

    .line 390
    .local v2, ssl:Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;
    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->setParentActivity(Landroid/app/Activity;)V

    .line 392
    const v3, 0x7f0e0021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->leftVolume:Landroid/widget/ImageView;

    .line 393
    const v3, 0x7f0e0023

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->rightVolume:Landroid/widget/ImageView;

    .line 394
    const v3, 0x7f0e0022

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 395
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 398
    const v3, 0x7f0e0031

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 399
    .local v1, btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v1, :cond_49

    .line 400
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    :cond_49
    const v3, 0x7f0e000c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 410
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v0, :cond_5c

    .line 411
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$4;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_5c
    const v3, 0x7f0e0026

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    .line 426
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v3, :cond_9b

    .line 427
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 428
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 433
    :goto_7d
    const v3, 0x7f0e0025

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    .line 435
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerDetail$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$6;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 459
    return-void

    .line 430
    :cond_9b
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_7d
.end method

.method private initRingtoneString()V
    .registers 4

    .prologue
    .line 767
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "alarm_tone_uri"

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    return-void
.end method

.method private declared-synchronized saveDetailChange()V
    .registers 4

    .prologue
    .line 497
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_46

    if-eqz v1, :cond_7

    .line 521
    :goto_5
    monitor-exit p0

    return-void

    .line 499
    :cond_7
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z

    .line 501
    const-string v1, "TimerDetail"

    const-string v2, "saveDetailChange() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_49

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v2, 0x3

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 508
    :goto_1c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "alarm_tone_uri"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    const-string v1, "alarm_tone_index"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 516
    const-string v1, "volume_progress_value"

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->finish()V
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_46

    goto :goto_5

    .line 497
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1

    .line 506
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    goto :goto_1c
.end method

.method private setEnableField(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->leftVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->rightVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 950
    return-void
.end method

.method private setRingtoneTitle(Ljava/lang/String;)V
    .registers 6
    .parameter "tone"

    .prologue
    .line 833
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 834
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 836
    .local v0, title:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 837
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    :goto_25
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    return-void

    .line 842
    :cond_2b
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method private validRingtoneStr(Ljava/lang/String;)Z
    .registers 13
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 202
    const/4 v8, 0x0

    .line 203
    .local v8, retVal:Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 205
    .local v10, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 206
    .local v7, fp:Ljava/io/File;
    if-eqz v10, :cond_105

    .line 207
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, scheme:Ljava/lang/String;
    const-string v0, "TimerDetail"

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

    .line 210
    if-eqz v9, :cond_45

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 211
    :cond_45
    new-instance v7, Ljava/io/File;

    .end local v7           #fp:Ljava/io/File;
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v7       #fp:Ljava/io/File;
    const-string v0, "TimerDetail"

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v7, :cond_82

    .line 215
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 217
    const-string v0, "TimerDetail"

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

    .line 218
    const/4 v8, 0x1

    .line 226
    :cond_82
    :goto_82
    const-string v0, "TimerDetail"

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

    .line 227
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 230
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_105

    .line 232
    const-string v0, "TimerDetail"

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

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_102

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_102

    .line 235
    const/4 v8, 0x1

    .line 236
    :cond_102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #scheme:Ljava/lang/String;
    :cond_105
    return v8

    .line 221
    .restart local v9       #scheme:Ljava/lang/String;
    :cond_106
    const-string v0, "TimerDetail"

    const-string v1, "fp is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82
.end method

.method private volumeKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1051
    packed-switch p1, :pswitch_data_4a

    .line 1071
    :goto_6
    return v1

    .line 1054
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v3, v2, :cond_f

    move v1, v2

    .line 1056
    goto :goto_6

    .line 1057
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1058
    const/16 v4, 0x18

    if-ne p1, v4, :cond_43

    .line 1059
    add-int/lit8 v1, v3, 0x1

    if-le v1, v0, :cond_41

    .line 1063
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_2e

    .line 1065
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 1066
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolIntent:Landroid/content/Intent;

    const-string v3, "volume_level"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 1069
    goto :goto_6

    :cond_41
    move v0, v1

    .line 1059
    goto :goto_1e

    .line 1061
    :cond_43
    add-int/lit8 v0, v3, -0x1

    if-gez v0, :cond_1e

    move v0, v1

    goto :goto_1e

    .line 1051
    nop

    :pswitch_data_4a
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 536
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 538
    sparse-switch p1, :sswitch_data_44

    .line 563
    :cond_7
    :goto_7
    return-void

    .line 540
    :sswitch_8
    if-ne p2, v2, :cond_7

    .line 543
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 544
    .local v0, pickedUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_7

    .line 549
    .end local v0           #pickedUri:Landroid/net/Uri;
    :sswitch_16
    and-int/lit8 v1, p2, 0xf

    if-eqz v1, :cond_7

    .line 552
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 553
    const-string v1, "FILE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_7

    .line 538
    :sswitch_data_44
    .sparse-switch
        0x1001 -> :sswitch_16
        0x1005 -> :sswitch_8
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->cancelDetailChange()V

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 568
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 472
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mNeedSavePopup:Z

    .line 255
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setContentView(I)V

    .line 256
    const v2, 0x7f0e0015

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;

    .line 258
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "volume_progress_value"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v2, "volume_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 278
    .local v1, intent:Landroid/content/Intent;
    iput v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDetailType:I

    .line 281
    const-string v2, "alarm_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v3, "timer_volume_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolIntent:Landroid/content/Intent;

    .line 285
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    .line 286
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldVolume:I

    .line 290
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    .line 291
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v2, :cond_9c

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 294
    :cond_9c
    invoke-direct {p0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->init(Landroid/content/Context;)V

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setRingtoneTitle(Ljava/lang/String;)V

    .line 302
    :goto_ac
    const/4 v2, 0x0

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mToast:Landroid/widget/Toast;

    .line 303
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSmartToast:Landroid/widget/Toast;

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v2, v6, :cond_e3

    .line 307
    invoke-direct {p0, v5}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setEnableField(Z)V

    .line 313
    :goto_cd
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 314
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$2;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    return-void

    .line 299
    :cond_df
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    goto :goto_ac

    .line 309
    :cond_e3
    invoke-direct {p0, v6}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setEnableField(Z)V

    goto :goto_cd
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 666
    const-string v0, "TimerDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    packed-switch p1, :pswitch_data_22

    .line 676
    :goto_1b
    const/4 v0, 0x0

    return-object v0

    .line 670
    :pswitch_1d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->doPickRingtone()V

    goto :goto_1b

    .line 667
    nop

    :pswitch_data_22
    .packed-switch 0x1103
        :pswitch_1d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 385
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1041
    const-string v0, "TimerDetail"

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

    .line 1043
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->volumeKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1044
    const/4 v0, 0x1

    .line 1046
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 996
    const-string v2, "TimerDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..onKeyUp.. keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    packed-switch p1, :pswitch_data_90

    .line 1036
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_22
    return v1

    .line 1000
    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-eq v2, v1, :cond_22

    .line 1004
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v6, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1007
    sget-object v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1e

    .line 1008
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_77

    .line 1009
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, vStr:Ljava/lang/String;
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5b

    .line 1011
    :cond_51
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    :cond_5b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v2, :cond_1e

    .line 1017
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v6, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1020
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1021
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->play()V

    goto :goto_1e

    .line 1024
    .end local v0           #vStr:Ljava/lang/String;
    :cond_77
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v6, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1027
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 997
    :pswitch_data_90
    .packed-switch 0x18
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_9

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 342
    :cond_9
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldAudioStream:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setVolumeControlStream(I)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSmartToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_28

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 355
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPause:Z

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 359
    return-void

    .line 352
    :cond_38
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_28
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "bundle"

    .prologue
    const/4 v6, 0x1

    .line 617
    const-string v4, "TimerDetail"

    const-string v5, "onRestoreInstancestate() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 620
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v5, "alarm_sound_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 622
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v5, "alarm_sound_tone"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 623
    const-string v4, "alarm_sound_tone_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, toneName:Ljava/lang/String;
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    .line 625
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_32
    const-string v4, "alarm_noti_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 627
    .local v2, typeFlag:I
    and-int/lit16 v4, v2, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_42

    .line 628
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v6, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 629
    :cond_42
    and-int/lit8 v4, v2, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4c

    .line 630
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v6, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 631
    :cond_4c
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_54

    .line 632
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v6, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 634
    :cond_54
    const-string v4, "alarm_noti_values"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 635
    .local v3, value:I
    and-int/lit8 v0, v3, 0xf

    .line 636
    .local v0, offset:I
    if-lez v0, :cond_64

    .line 637
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v5, v0, -0x1

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 638
    :cond_64
    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v0, v4, 0x4

    .line 639
    if-lez v0, :cond_70

    .line 640
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v5, v0, -0x1

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 643
    :cond_70
    const-string v4, "TimerDetail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " alarmSoundType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v6, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 572
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 574
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 578
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mNeedSavePopup:Z

    if-ne v0, v2, :cond_17

    .line 581
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mNeedSavePopup:Z

    .line 584
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_22

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 587
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldAudioStream:I

    .line 588
    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setVolumeControlStream(I)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_3a

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 592
    :cond_3a
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDetailType:I

    if-ne v0, v2, :cond_4b

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setRingtoneTitle(Ljava/lang/String;)V

    .line 612
    :cond_4b
    :goto_4b
    return-void

    .line 598
    :cond_4c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    goto :goto_4b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 649
    const-string v1, "alarm_sound_tone"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    const-string v1, "alarm_sound_tone_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v1, :cond_21

    .line 654
    or-int/lit16 v0, v0, 0x100

    .line 655
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v1, :cond_29

    .line 656
    or-int/lit8 v0, v0, 0x10

    .line 657
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_31

    .line 658
    or-int/lit8 v0, v0, 0x1

    .line 659
    :cond_31
    const-string v1, "alarm_noti_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 662
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z

    .line 247
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 371
    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 372
    return-void

    .line 369
    :cond_14
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_10
.end method

.method public stopPlayer()V
    .registers 3

    .prologue
    .line 982
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 992
    :cond_10
    :goto_10
    return-void

    .line 989
    :cond_11
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_10
.end method
