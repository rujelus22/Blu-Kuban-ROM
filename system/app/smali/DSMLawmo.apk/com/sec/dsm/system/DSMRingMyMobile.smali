.class public Lcom/sec/dsm/system/DSMRingMyMobile;
.super Landroid/app/Activity;
.source "DSMRingMyMobile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;
    }
.end annotation


# static fields
.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;

.field private static mOldVolume:I

.field private static nPlayCount:I

.field private static playMaxRingtone:Landroid/media/Ringtone;


# instance fields
.field frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLocked:Z

.field private mRingermode:Z

.field private mSilentmode:Z

.field private mWindowManager:Landroid/view/IWindowManager;

.field playpcwView:Landroid/widget/ImageView;

.field private quit_receiver:Landroid/content/BroadcastReceiver;

.field private textv_changeFontHelvetica:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 93
    sput v1, Lcom/sec/dsm/system/DSMRingMyMobile;->mOldVolume:I

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    sput v1, Lcom/sec/dsm/system/DSMRingMyMobile;->nPlayCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    .line 99
    iput-boolean v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mRingermode:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mSilentmode:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Lcom/sec/dsm/system/DSMRingMyMobile$1;

    invoke-direct {v0, p0}, Lcom/sec/dsm/system/DSMRingMyMobile$1;-><init>(Lcom/sec/dsm/system/DSMRingMyMobile;)V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->quit_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static RegisterRepeatingAlarmTime(Landroid/content/Context;ZI)V
    .registers 14
    .parameter "context"
    .parameter "isBootUp"
    .parameter "nextTime"

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RegisterRepeatingAlarmTime] Input interval Time (MIN)= "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 40
    new-instance v8, Landroid/content/Intent;

    const-string v1, "aaaaa"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v1, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 42
    .local v6, sender:Landroid/app/PendingIntent;
    mul-int/lit16 v1, p2, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v4, v1

    .line 43
    .local v4, intervalTime:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RegisterRepeatingAlarmTime] interval Time: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 44
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 46
    .local v2, starttime:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "starttime : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    if-ne p1, v1, :cond_82

    .line 48
    const-wide/32 v9, 0xea60

    add-long/2addr v2, v9

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Boot up,starttime] starttime : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 54
    :goto_7d
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 58
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #starttime:J
    .end local v4           #intervalTime:J
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v8           #intent:Landroid/content/Intent;
    :goto_81
    return-void

    .line 51
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v2       #starttime:J
    .restart local v4       #intervalTime:J
    .restart local v6       #sender:Landroid/app/PendingIntent;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long v2, v9, v4

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[starttime] starttime : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9e} :catch_9f

    goto :goto_7d

    .line 55
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #starttime:J
    .end local v4           #intervalTime:J
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v8           #intent:Landroid/content/Intent;
    :catch_9f
    move-exception v7

    .line 56
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81
.end method

.method static synthetic access$000(Lcom/sec/dsm/system/DSMRingMyMobile;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private playMaxAudio(I)V
    .registers 6
    .parameter "nChoice"

    .prologue
    const/4 v3, 0x2

    .line 107
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2a

    .line 108
    const-string v1, "playMaxAudio +"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 110
    .local v0, maxVolume:I
    sget-object v1, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 111
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    sput-object v1, Lcom/sec/dsm/system/DSMRingMyMobile;->playMaxRingtone:Landroid/media/Ringtone;

    .line 112
    sget-object v1, Lcom/sec/dsm/system/DSMRingMyMobile;->playMaxRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 113
    const-string v1, "playMaxAudio -"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 115
    .end local v0           #maxVolume:I
    :cond_2a
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 318
    :try_start_0
    const-string v1, "requestSystemKeyEvent() +"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_16

    move-result v1

    .line 325
    :goto_f
    return v1

    .line 320
    :catch_10
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_14
    const/4 v1, 0x0

    goto :goto_f

    .line 322
    :catch_16
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method private setStatusBarCanHide(Z)V
    .registers 5
    .parameter "canHide"

    .prologue
    .line 218
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 221
    .local v1, wm:Landroid/view/IWindowManager;
    :try_start_a
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowManager;->setStatusBarCanHide(Landroid/content/ComponentName;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 226
    :goto_11
    return-void

    .line 223
    :catch_12
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11
.end method

.method private unregisterReceiver()V
    .registers 4

    .prologue
    .line 158
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, apiLevel:I
    const/4 v2, 0x7

    if-lt v0, v2, :cond_1c

    .line 161
    :try_start_9
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->quit_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_17

    .line 171
    :goto_e
    return-void

    .line 162
    :catch_f
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->quit_receiver:Landroid/content/BroadcastReceiver;

    .line 164
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e

    .line 165
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_17
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1c
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->quit_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_e
.end method

.method private updateLock()V
    .registers 8

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    const-string v2, "updateLock() +"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 300
    iget-boolean v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    if-eqz v2, :cond_38

    .line 302
    const-string v2, "OnKeyLock true +"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v5, v4}, Lcom/sec/dsm/system/DSMRingMyMobile;->requestSystemKeyEvent(IZ)Z

    move-result v1

    .line 304
    .local v1, tempret:Z
    invoke-direct {p0, v6, v4}, Lcom/sec/dsm/system/DSMRingMyMobile;->requestSystemKeyEvent(IZ)Z

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnKeyLock true -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 313
    .end local v1           #tempret:Z
    :goto_30
    const-string v2, "PopupDlgPCW"

    const-string v3, "updateLock() -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 308
    :cond_38
    const-string v2, "OnKeyLock false -"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, v5, v3}, Lcom/sec/dsm/system/DSMRingMyMobile;->requestSystemKeyEvent(IZ)Z

    move-result v0

    .line 310
    .local v0, tempfalseret:Z
    invoke-direct {p0, v6, v3}, Lcom/sec/dsm/system/DSMRingMyMobile;->requestSystemKeyEvent(IZ)Z

    move-result v0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnKeyLock true -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_30
.end method


# virtual methods
.method disableLock()V
    .registers 3

    .prologue
    .line 244
    const-string v0, "Register IntentFilter : Register IntentFilter onResume() "

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 246
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 247
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_22

    .line 248
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 249
    iget-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 251
    :cond_22
    return-void
.end method

.method getCurrentVolume()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 140
    const-string v0, "getCurrentVolume +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 141
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_4b

    .line 143
    const-string v0, "Slient mode check +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 144
    iput-boolean v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mSilentmode:Z

    .line 145
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 146
    const-string v0, "Slient mode check +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 153
    :cond_2a
    :goto_2a
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sput v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mOldVolume:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentVolume -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/dsm/system/DSMRingMyMobile;->mOldVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 155
    return-void

    .line 147
    :cond_4b
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 148
    const-string v0, "manner mode check +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 149
    iput-boolean v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mRingermode:Z

    .line 150
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 151
    const-string v0, "manner mode check -"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 340
    iput-object p0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;

    .line 341
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v4}, Lcom/sec/dsm/system/DSMRingMyMobile;->RegisterRepeatingAlarmTime(Landroid/content/Context;ZI)V

    .line 342
    const-string v2, "OnCreate begin"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 343
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mWindowManager:Landroid/view/IWindowManager;

    .line 344
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->updateLock()V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLocked * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getCurrentVolume()V

    .line 347
    invoke-direct {p0, v4}, Lcom/sec/dsm/system/DSMRingMyMobile;->playMaxAudio(I)V

    .line 348
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->setContentView(I)V

    .line 349
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/HelveticaNeueUltraLightv130.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 350
    .local v1, face:Landroid/graphics/Typeface;
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->textv_changeFontHelvetica:Landroid/widget/TextView;

    .line 351
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->textv_changeFontHelvetica:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 352
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->playpcwView:Landroid/widget/ImageView;

    .line 353
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->playpcwView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 354
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 355
    .local v0, btndone:Landroid/widget/Button;
    new-instance v2, Lcom/sec/dsm/system/DSMRingMyMobile$2;

    invoke-direct {v2, p0}, Lcom/sec/dsm/system/DSMRingMyMobile$2;-><init>(Lcom/sec/dsm/system/DSMRingMyMobile;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    const-string v2, "OnCreate end"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 378
    const-string v1, "onDestroy begin"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 379
    iput-boolean v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    .line 380
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->updateLock()V

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PCW_RINGTONE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, onPCW_DONE:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v0}, Lcom/sec/dsm/system/DSMRingMyMobile;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    iput-boolean v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mRingermode:Z

    .line 385
    iget-object v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 386
    sput v2, Lcom/sec/dsm/system/DSMRingMyMobile;->mOldVolume:I

    .line 387
    sput v2, Lcom/sec/dsm/system/DSMRingMyMobile;->nPlayCount:I

    .line 388
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->unregisterReceiver()V

    .line 389
    const-string v1, "onDestroy end"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 390
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 391
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    if-eqz v0, :cond_6

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    if-eqz v0, :cond_6

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mLocked:Z

    if-eqz v0, :cond_6

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 263
    const-string v0, "onPause +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMRingMyMobile;->setStatusBarCanHide(Z)V

    .line 265
    const-string v0, "onPause -"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 267
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 199
    const-string v1, "onResume +"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "aaaaa"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, quitfilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->quit_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/dsm/system/DSMRingMyMobile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    const-string v1, "Register IntentFilter : Register IntentFilter onResume() "

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->setStatusBarCanHide(Z)V

    .line 206
    sget v1, Lcom/sec/dsm/system/DSMRingMyMobile;->nPlayCount:I

    if-ge v1, v2, :cond_31

    .line 207
    const-string v1, "nPlayCount +"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x5

    sput v1, Lcom/sec/dsm/system/DSMRingMyMobile;->nPlayCount:I

    .line 209
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->disableLock()V

    .line 210
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->showOnTop()V

    .line 211
    const-string v1, "nPlayCount -"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 213
    :cond_31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    const-string v1, "onResume -"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 273
    return-void
.end method

.method reenableLock()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_c

    .line 255
    iget-object v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 256
    iput-object v1, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 257
    :cond_c
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_12

    .line 258
    sput-object v1, Lcom/sec/dsm/system/DSMRingMyMobile;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 259
    :cond_12
    return-void
.end method

.method setOriginalVolume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 120
    const-string v0, "setOriginalVolume +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 122
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    .line 123
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_30

    .line 124
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    sget v2, Lcom/sec/dsm/system/DSMRingMyMobile;->mOldVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 125
    iget-boolean v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mRingermode:Z

    if-ne v0, v3, :cond_3b

    .line 126
    const-string v0, "return manner mode true +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 128
    const-string v0, "return manner mode true -"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 135
    :cond_30
    :goto_30
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->playMaxRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 136
    const-string v0, "setOriginalVolume -"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 137
    return-void

    .line 129
    :cond_3b
    iget-boolean v0, p0, Lcom/sec/dsm/system/DSMRingMyMobile;->mSilentmode:Z

    if-ne v0, v3, :cond_30

    .line 130
    const-string v0, "return Slient mode true +"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 132
    const-string v0, "return Slient mode true -"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_30
.end method

.method showOnTop()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 230
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 231
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 232
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 233
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMRingMyMobile;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80482

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 240
    invoke-static {p0}, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->acquire(Landroid/content/Context;)V

    .line 241
    return-void
.end method
