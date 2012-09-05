.class public Lcom/sec/android/app/voicerecorder/util/VRIntent;
.super Ljava/lang/Object;
.source "VRIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;
    }
.end annotation


# static fields
.field private static mLowBattPopup:Landroid/app/AlertDialog;

.field private static mPopupLowBattShow:Z


# instance fields
.field private mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

.field private mCallListener:Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mPopupLowBattShow:Z

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mLowBattPopup:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "eventHandler"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->popupLowBatteryDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    sput-boolean p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mPopupLowBattShow:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static popupLowBatteryDialog(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 170
    sget-boolean v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mPopupLowBattShow:Z

    if-nez v1, :cond_30

    .line 171
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mPopupLowBattShow:Z

    .line 173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, lowBatteryDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 176
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/voicerecorder/util/VRIntent$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mLowBattPopup:Landroid/app/AlertDialog;

    .line 193
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mLowBattPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 195
    .end local v0           #lowBatteryDialog:Landroid/app/AlertDialog$Builder;
    :cond_30
    return-void
.end method

.method private registerBroadcastReceiverAlarm(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 339
    if-eqz p1, :cond_20

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 360
    :cond_6
    :goto_6
    return-void

    .line 343
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$8;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 355
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverAlarm:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverFileDelete(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 278
    if-eqz p1, :cond_20

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 300
    :cond_6
    :goto_6
    return-void

    .line 282
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$6;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.voicerecorder.VOICE_INTENT_FILE_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 295
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverFinish(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 253
    if-eqz p1, :cond_20

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 275
    :cond_6
    :goto_6
    return-void

    .line 257
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$5;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.voicerecorder.VOICE_INTENT_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 270
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverFinish:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverLocale(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 363
    if-eqz p1, :cond_20

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 386
    :cond_6
    :goto_6
    return-void

    .line 367
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$9;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 381
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverLocale:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverLowBattery(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 220
    if-eqz p1, :cond_20

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 250
    :cond_6
    :goto_6
    return-void

    .line 224
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$4;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 245
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverMusicCommand(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 389
    if-eqz p1, :cond_20

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 417
    :cond_6
    :goto_6
    return-void

    .line 393
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$10;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 409
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 412
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverMusicCommand:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverNotification(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 420
    if-eqz p1, :cond_43

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 448
    :cond_6
    :goto_6
    return-void

    .line 424
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$11;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicerecorder.rec"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v1, "com.sec.android.app.voicerecorder.rec_pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v1, "com.sec.android.app.voicerecorder.rec_save"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v1, "com.sec.android.app.voicerecorder.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v1, "com.sec.android.app.voicerecorder.play_pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v1, "com.sec.android.app.voicerecorder.play_stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v1, "com.sec.android.app.voicerecorder.rec_new"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    const-string v1, "com.sec.android.app.voicerecorder.standby"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 443
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_43
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 444
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverNotification:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 452
    if-eqz p1, :cond_3d

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3c

    .line 454
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$12;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 490
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_3c
    :goto_3c
    return-void

    .line 500
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3c

    .line 501
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_3c
.end method

.method private registerBroadcastReceiverVolume(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 316
    if-eqz p1, :cond_20

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 336
    :cond_6
    :goto_6
    return-void

    .line 320
    :cond_7
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent$7;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 331
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    goto :goto_6
.end method

.method private registerTelephonyListener(Z)V
    .registers 5
    .parameter "register"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mTm:Landroid/telephony/TelephonyManager;

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mCallListener:Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;

    if-nez v0, :cond_18

    .line 513
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;Lcom/sec/android/app/voicerecorder/util/VRIntent$1;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mCallListener:Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;

    .line 514
    :cond_18
    if-eqz p1, :cond_24

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mCallListener:Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 518
    :goto_23
    return-void

    .line 517
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mCallListener:Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_23
.end method

.method public static sendElapsedTime2Notification(Landroid/content/Context;IJZ)V
    .registers 9
    .parameter "context"
    .parameter "recorderState"
    .parameter "elapsedTime"
    .parameter "init"

    .prologue
    .line 138
    const-string v1, "VRIntent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendElapsedTime2Notification() - elapsedTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.notification.voicerecordcommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "currentTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    const-string v1, "init"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v1, "from"

    const-string v2, "com.sec.app.voicerecorder.activity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public static sendMediaButtonReceived(Landroid/content/Context;IIZ)V
    .registers 6
    .parameter "context"
    .parameter "button"
    .parameter "repeatCount"
    .parameter "isKeyDown"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media_Button_Recieved"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, i:Landroid/content/Intent;
    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string v1, "repeat"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "iskeydown"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static startListActivityForResult(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method

.method public static startNoSdActivity(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method


# virtual methods
.method public registerBroadcastReceiversForActivity(Z)V
    .registers 2
    .parameter "register"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverSDCard(Z)V

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverLocale(Z)V

    .line 213
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverLowBattery(Z)V

    .line 214
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverFinish(Z)V

    .line 215
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverVolume(Z)V

    .line 216
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverFileDelete(Z)V

    .line 217
    return-void
.end method

.method public registerBroadcastReceiversForService(Z)V
    .registers 2
    .parameter "register"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverAlarm(Z)V

    .line 304
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverLocale(Z)V

    .line 305
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverMusicCommand(Z)V

    .line 306
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverNotification(Z)V

    .line 307
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverSDCard(Z)V

    .line 309
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerTelephonyListener(Z)V

    .line 310
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mTm:Landroid/telephony/TelephonyManager;

    .line 550
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;

    .line 551
    return-void
.end method
