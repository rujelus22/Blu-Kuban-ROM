.class public Lcom/sec/android/app/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDefaultImei:Z

.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mRepeatCount:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    .line 49
    sput v1, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDefaultImei:Z

    .line 63
    new-instance v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/sec/android/app/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput p0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput-boolean p0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static isKeyStringBlocked()Z
    .registers 5

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, imeiBlocked:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/imei/keystr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/music/framework/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_19

    move-result-object v1

    .line 499
    :goto_f
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 500
    const/4 v2, 0x1

    .line 502
    :goto_18
    return v2

    .line 494
    :catch_19
    move-exception v0

    .line 495
    .local v0, e:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 496
    sget-object v2, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/imei/keystr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 502
    .end local v0           #e:Ljava/io/IOException;
    :cond_24
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private isServiceAlive(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, returnCheck:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 474
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 476
    .local v2, item:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 477
    const/4 v3, 0x1

    .line 482
    .end local v2           #item:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_30
    return v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x19

    const/16 v10, 0x18

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 168
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 171
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 172
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 173
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 174
    sget-object v4, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SINK_STATE_CHANGED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-ne v0, v9, :cond_8b

    if-eq v1, v2, :cond_69

    if-nez v1, :cond_8b

    .line 178
    :cond_69
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 179
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "###############A2DP connected 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v1, "com.android.music.musicservicecommand.ULP_SET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "ulp.state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 469
    :cond_8a
    :goto_8a
    return-void

    .line 187
    :cond_8b
    if-eqz v0, :cond_90

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8a

    .line 189
    :cond_90
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 192
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "###############A2DP Disconnected 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v1, "com.android.music.musicservicecommand.ULP_SET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "ulp.state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v1, "ulp.pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8a

    .line 208
    :cond_b7
    const-string v0, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 209
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 211
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8a

    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 214
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "###############A2DP playing status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string v1, "com.android.music.musicservicecommand.ULP_SET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "ulp.state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v2

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_363

    .line 224
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sinkState == BluetoothA2dp.STATE_PLAYING, Effect:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "->Normal"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v1, 0x1000

    aput v1, v0, v2

    .line 227
    invoke-static {v3}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    move v0, v2

    .line 231
    :goto_11e
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v9

    const/high16 v3, 0x20

    if-ne v1, v3, :cond_360

    .line 232
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sinkState == BluetoothA2dp.STATE_PLAYING, 5.1CH: On -> Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v1, 0x40

    aput v1, v0, v9

    .line 237
    :goto_133
    if-eqz v2, :cond_8a

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8a

    .line 243
    :cond_146
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 244
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 248
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8a

    .line 255
    :cond_179
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31d

    .line 256
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 260
    if-eqz v0, :cond_8a

    .line 267
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 275
    const/4 v4, 0x1

    :try_start_194
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 276
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 277
    const-string v4, "com.sec.android.app.factorytest.FactoryTestMain"

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1aa
    .catch Ljava/lang/NullPointerException; {:try_start_194 .. :try_end_1aa} :catch_35d

    move-result v1

    if-nez v1, :cond_8a

    .line 292
    :goto_1ad
    sget-boolean v1, Lcom/sec/android/app/music/MusicFeatures;->FLAG_CHECK_IMEI_WHEN_HANDLE_ACTION_MEDIA_BUTTON:Z

    if-eqz v1, :cond_1c6

    sget-boolean v1, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDefaultImei:Z

    if-eqz v1, :cond_1c6

    .line 293
    invoke-static {}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->isKeyStringBlocked()Z

    move-result v1

    if-nez v1, :cond_1c4

    .line 294
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Headset event is ignored because of factory mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 297
    :cond_1c4
    sput-boolean v3, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDefaultImei:Z

    .line 324
    :cond_1c6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 325
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 328
    const/4 v1, 0x0

    .line 329
    sparse-switch v4, :sswitch_data_366

    .line 371
    :cond_1d2
    :goto_1d2
    if-eqz v1, :cond_8a

    .line 372
    sget-object v6, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive() Command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mDown="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v6, 0x4f

    if-eq v4, v6, :cond_256

    const/16 v6, 0x5a

    if-eq v4, v6, :cond_256

    const/16 v6, 0x59

    if-eq v4, v6, :cond_256

    const/16 v6, 0x55

    if-eq v4, v6, :cond_256

    const/16 v6, 0x57

    if-eq v4, v6, :cond_256

    const/16 v6, 0x58

    if-eq v4, v6, :cond_256

    const/16 v6, 0x56

    if-eq v4, v6, :cond_256

    if-eq v4, v11, :cond_256

    if-eq v4, v10, :cond_256

    iget-object v6, p0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    if-nez v6, :cond_256

    .line 390
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "isBluetoothA2dpOn() == false, playing with speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 331
    :sswitch_229
    const-string v1, "volume_down"

    goto :goto_1d2

    .line 334
    :sswitch_22c
    const-string v1, "volume_up"

    goto :goto_1d2

    .line 337
    :sswitch_22f
    const-string v1, "stop"

    goto :goto_1d2

    .line 341
    :sswitch_232
    const-string v1, "togglepause"

    goto :goto_1d2

    .line 344
    :sswitch_235
    const-string v1, "play"

    goto :goto_1d2

    .line 347
    :sswitch_238
    const-string v1, "pause"

    goto :goto_1d2

    .line 350
    :sswitch_23b
    const-string v1, "next"

    goto :goto_1d2

    .line 353
    :sswitch_23e
    const-string v1, "previous"

    goto :goto_1d2

    .line 356
    :sswitch_241
    if-nez v5, :cond_246

    .line 357
    const-string v1, "rewind_down"

    goto :goto_1d2

    .line 358
    :cond_246
    if-ne v5, v2, :cond_1d2

    .line 359
    const-string v1, "rewind_up"

    goto :goto_1d2

    .line 362
    :sswitch_24b
    if-nez v5, :cond_250

    .line 363
    const-string v1, "fastforward_down"

    goto :goto_1d2

    .line 364
    :cond_250
    if-ne v5, v2, :cond_1d2

    .line 365
    const-string v1, "fastforward_up"

    goto/16 :goto_1d2

    .line 394
    :cond_256
    if-nez v5, :cond_2be

    .line 395
    sget-boolean v5, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    if-nez v5, :cond_295

    .line 396
    const/16 v5, 0x4f

    if-eq v4, v5, :cond_264

    if-eq v4, v11, :cond_264

    if-ne v4, v10, :cond_2a0

    .line 400
    :cond_264
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_295

    .line 401
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    sput-boolean v2, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    .line 405
    sget v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    if-ne v0, v2, :cond_295

    .line 407
    sget v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    .line 408
    sput-boolean v3, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    .line 409
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    :cond_295
    :goto_295
    invoke-virtual {p0}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto/16 :goto_8a

    .line 415
    :cond_2a0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v3, "KEY_FROM_BLUETOOTH_RECEIVER"

    const-string v4, "KEY_FROM_BLUETOOTH_RECEIVER"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v3, "command"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 420
    sput-boolean v2, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_295

    .line 423
    :cond_2be
    if-ne v5, v2, :cond_30d

    .line 424
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    const/16 v0, 0x4f

    if-eq v4, v0, :cond_2cd

    if-eq v4, v11, :cond_2cd

    if-ne v4, v10, :cond_2f0

    .line 428
    :cond_2cd
    sget-boolean v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v0, :cond_2ed

    .line 429
    sget v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    if-nez v0, :cond_2ed

    .line 431
    sget v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    .line 432
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 444
    :cond_2ed
    :goto_2ed
    sput-boolean v3, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_295

    .line 437
    :cond_2f0
    const/16 v0, 0x59

    if-eq v4, v0, :cond_2f8

    const/16 v0, 0x5a

    if-ne v4, v0, :cond_2ed

    .line 439
    :cond_2f8
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2ed

    .line 446
    :cond_30d
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    sget-object v0, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    sput-boolean v3, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mDown:Z

    .line 449
    sput v3, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->mRepeatCount:I

    goto/16 :goto_295

    .line 458
    :cond_31d
    const-string v0, "com.android.music.musicservicecommand.play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33d

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v1, "command"

    const-string v2, "play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8a

    .line 463
    :cond_33d
    const-string v0, "com.android.music.musicservicecommand.playprevious"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "command"

    const-string v2, "playprevious"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8a

    .line 288
    :catch_35d
    move-exception v1

    goto/16 :goto_1ad

    :cond_360
    move v2, v0

    goto/16 :goto_133

    :cond_363
    move v0, v3

    goto/16 :goto_11e

    .line 329
    :sswitch_data_366
    .sparse-switch
        0x18 -> :sswitch_22c
        0x19 -> :sswitch_229
        0x4f -> :sswitch_232
        0x55 -> :sswitch_232
        0x56 -> :sswitch_22f
        0x57 -> :sswitch_23b
        0x58 -> :sswitch_23e
        0x59 -> :sswitch_241
        0x5a -> :sswitch_24b
        0x7e -> :sswitch_235
        0x7f -> :sswitch_238
    .end sparse-switch
.end method
