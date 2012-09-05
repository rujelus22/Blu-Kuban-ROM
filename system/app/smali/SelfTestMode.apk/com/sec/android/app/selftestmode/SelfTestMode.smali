.class public Lcom/sec/android/app/selftestmode/SelfTestMode;
.super Ljava/lang/Object;
.source "SelfTestMode.java"


# instance fields
.field private isTestOn:Z

.field private mActiveTest:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultMusicVolume:I

.field private mDefaultVoicecallVolume:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->isTestOn:Z

    .line 95
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->UNKOWN_TEST:I

    iput v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mVibrator:Landroid/os/Vibrator;

    .line 103
    iput v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mDefaultMusicVolume:I

    .line 105
    return-void
.end method

.method private accSensorTest()V
    .registers 4

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method private bluetoothTest()V
    .registers 4

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/selftestmode/BluetoothTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const-string v1, "bt_on_off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method private cameraTest()V
    .registers 4

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.selftestmode"

    const-string v2, "com.sec.android.app.selftestmode.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method private dimmingTest()V
    .registers 2

    .prologue
    .line 295
    const/16 v0, 0x14

    .line 297
    .local v0, brightness:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->setBrightness(I)V

    .line 299
    return-void
.end method

.method private lightSensorTest()V
    .registers 4

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/selftestmode/LightSensorTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method private melodyTest()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mDefaultVoicecallVolume:I

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 233
    :try_start_14
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 235
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_2a

    .line 237
    const-string v0, "SelfTestMode"

    const-string v1, "afd is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_29
    return-void

    .line 243
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_2a
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 251
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_56} :catch_5c

    .line 261
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_56
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_29

    .line 255
    :catch_5c
    move-exception v7

    .line 257
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "SelfTestMode"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method private proximitySensorTest()V
    .registers 4

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/selftestmode/ProximityTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method private setBrightness(I)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 447
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 451
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 453
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 463
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_15
    :goto_15
    return-void

    .line 457
    :catch_16
    move-exception v0

    .line 459
    .local v0, doe:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15
.end method

.method private speakerTest()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mDefaultMusicVolume:I

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f05

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 289
    return-void
.end method

.method private tspDotTest()V
    .registers 4

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/selftestmode/TspDotModeTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method private tspGridTest()V
    .registers 4

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/selftestmode/TspGridModeTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method private vibrationTest()V
    .registers 4

    .prologue
    .line 269
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_e

    .line 271
    .local v0, pattern:[J
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 273
    return-void

    .line 269
    nop

    :array_e
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private vtCameraTest()V
    .registers 4

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.selftestmode"

    const-string v2, "com.sec.android.app.selftestmode.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "camera_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method


# virtual methods
.method public selfTest(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->isTestOn:Z

    if-eqz v0, :cond_17

    .line 113
    iget v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    if-ne v0, p1, :cond_14

    .line 115
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->MELODY_TEST:I

    if-lt p1, v0, :cond_17

    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->DIMMING_TEST:I

    if-gt p1, v0, :cond_17

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->testOff()V

    .line 217
    :goto_13
    return-void

    .line 125
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->testOff()V

    .line 131
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->isTestOn:Z

    .line 133
    iput p1, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    .line 137
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->MELODY_TEST:I

    if-ne p1, v0, :cond_2b

    .line 139
    const-string v0, "SelfTestMode"

    const-string v1, "Melody test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->melodyTest()V

    goto :goto_13

    .line 143
    :cond_2b
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->VIBRATION_TEST:I

    if-ne p1, v0, :cond_3a

    .line 145
    const-string v0, "SelfTestMode"

    const-string v1, "Vibration_test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->vibrationTest()V

    goto :goto_13

    .line 149
    :cond_3a
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->SPEAKER_TEST:I

    if-ne p1, v0, :cond_49

    .line 151
    const-string v0, "SelfTestMode"

    const-string v1, "SPEAKER_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->speakerTest()V

    goto :goto_13

    .line 155
    :cond_49
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->DIMMING_TEST:I

    if-ne p1, v0, :cond_58

    .line 157
    const-string v0, "SelfTestMode"

    const-string v1, "DIMMING_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->dimmingTest()V

    goto :goto_13

    .line 161
    :cond_58
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->CAMERA_TEST:I

    if-ne p1, v0, :cond_67

    .line 163
    const-string v0, "SelfTestMode"

    const-string v1, "CAMERA_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->cameraTest()V

    goto :goto_13

    .line 167
    :cond_67
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->VT_CAMERA_TEST:I

    if-ne p1, v0, :cond_76

    .line 169
    const-string v0, "SelfTestMode"

    const-string v1, "VT_CAMERA_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->vtCameraTest()V

    goto :goto_13

    .line 173
    :cond_76
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->BLUETOOTH_TEST:I

    if-ne p1, v0, :cond_85

    .line 175
    const-string v0, "SelfTestMode"

    const-string v1, "BLUETOOTH_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->bluetoothTest()V

    goto :goto_13

    .line 179
    :cond_85
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->TSP_DOT_TEST:I

    if-ne p1, v0, :cond_94

    .line 181
    const-string v0, "SelfTestMode"

    const-string v1, "TSP_DOT_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->tspDotTest()V

    goto :goto_13

    .line 185
    :cond_94
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->TSP_GRID_TEST:I

    if-ne p1, v0, :cond_a4

    .line 187
    const-string v0, "SelfTestMode"

    const-string v1, "TSP_GRID_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->tspGridTest()V

    goto/16 :goto_13

    .line 191
    :cond_a4
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->ACC_SENSOR_TEST:I

    if-ne p1, v0, :cond_b4

    .line 193
    const-string v0, "SelfTestMode"

    const-string v1, "ACC_SENSOR_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->accSensorTest()V

    goto/16 :goto_13

    .line 197
    :cond_b4
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->PROXIMITY_SENSOR_TEST:I

    if-ne p1, v0, :cond_c4

    .line 199
    const-string v0, "SelfTestMode"

    const-string v1, "PROXIMITY_SENSOR_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->proximitySensorTest()V

    goto/16 :goto_13

    .line 203
    :cond_c4
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->LIGHT_SENSOR_TEST:I

    if-ne p1, v0, :cond_d4

    .line 205
    const-string v0, "SelfTestMode"

    const-string v1, "LIGHT_SENSOR_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->lightSensorTest()V

    goto/16 :goto_13

    .line 211
    :cond_d4
    const-string v0, "SelfTestMode"

    const-string v1, "Unkown test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->isTestOn:Z

    goto/16 :goto_13
.end method

.method public testOff()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 395
    iput-boolean v5, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->isTestOn:Z

    .line 397
    iget v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    sget v3, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->MELODY_TEST:I

    if-ne v2, v3, :cond_1e

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_12

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 405
    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mDefaultVoicecallVolume:I

    invoke-virtual {v2, v5, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 437
    :cond_19
    :goto_19
    sget v2, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->UNKOWN_TEST:I

    iput v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    .line 439
    return-void

    .line 407
    :cond_1e
    iget v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    sget v3, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->DIMMING_TEST:I

    if-ne v2, v3, :cond_3a

    .line 409
    const/4 v0, 0x0

    .line 413
    .local v0, brightness:I
    :try_start_25
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_25 .. :try_end_30} :catch_35

    move-result v0

    .line 421
    :goto_31
    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->setBrightness(I)V

    goto :goto_19

    .line 415
    :catch_35
    move-exception v1

    .line 417
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_31

    .line 423
    .end local v0           #brightness:I
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3a
    iget v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    sget v3, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->VIBRATION_TEST:I

    if-ne v2, v3, :cond_46

    .line 425
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    goto :goto_19

    .line 427
    :cond_46
    iget v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mActiveTest:I

    sget v3, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->SPEAKER_TEST:I

    if-ne v2, v3, :cond_19

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 433
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/android/app/selftestmode/SelfTestMode;->mDefaultMusicVolume:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_19
.end method
