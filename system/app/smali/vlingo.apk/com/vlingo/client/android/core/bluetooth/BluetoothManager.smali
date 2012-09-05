.class public final Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$ScoTimeoutTask;,
        Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$StartScoThread;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.STATE_CHANGED"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.STATE"

.field public static final MSG_START_VOICE_RECOGNITION:I = 0x1

.field private static final SCO_RETRY_DELAY:I = 0x7d0

.field public static final STATE_AUDIO_DISCONNECTED:I = 0xa

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private static mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private static mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private static mOnScoConnectedTask:Ljava/lang/Runnable;

.field private static mOnScoConnectedTaskTimeout:J

.field private static mScoTimeoutTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    new-instance v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$1;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$1;-><init>()V

    sput-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method static synthetic access$000()Landroid/bluetooth/BluetoothHeadset;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$100()Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$200()Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->getBTdevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Z)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->startSCO(Z)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/TimerTask;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$600(Z)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->stopSCO(Z)V

    return-void
.end method

.method private static cancelScoConnectedTask()V
    .registers 2

    .prologue
    .line 387
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTask:Ljava/lang/Runnable;

    .line 388
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTaskTimeout:J

    .line 389
    return-void
.end method

.method private static cancelScoTimeoutTask()V
    .registers 1

    .prologue
    .line 378
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_c

    .line 379
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 380
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    .line 382
    :cond_c
    return-void
.end method

.method public static declared-synchronized closeBtProxy()V
    .registers 4

    .prologue
    .line 115
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_16

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->stopSCO(Z)V

    .line 117
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    sget-object v3, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 120
    :cond_16
    monitor-exit v1

    return-void

    .line 115
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getBTdevice()Landroid/bluetooth/BluetoothDevice;
    .registers 4

    .prologue
    .line 123
    const-class v3, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v3

    const/4 v0, 0x0

    .line 124
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    :try_start_4
    sget-object v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1b

    .line 125
    sget-object v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 128
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1d

    .line 132
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1b
    monitor-exit v3

    return-object v0

    .line 123
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static isBluetoothAdapterOn()Z
    .registers 2

    .prologue
    .line 185
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized isBluetoothAudioOn()Z
    .registers 5

    .prologue
    .line 350
    const-class v3, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v3

    const/4 v1, 0x0

    .line 351
    .local v1, bluetoothAudioOn:Z
    :try_start_4
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 352
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_16

    move-result v1

    .line 357
    monitor-exit v3

    return v1

    .line 350
    .end local v0           #am:Landroid/media/AudioManager;
    :catchall_16
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized isHeadsetConnected()Z
    .registers 4

    .prologue
    .line 178
    const-class v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v2

    :try_start_3
    const-string v1, "bluetooth_headset_connected"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    move-result v0

    .line 181
    .local v0, headsetConnected:Z
    monitor-exit v2

    return v0

    .line 178
    .end local v0           #headsetConnected:Z
    :catchall_c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isListenOverBTEnabled()Z
    .registers 2

    .prologue
    .line 193
    const-string v0, "listen_over_bluetooth"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized onAppStateChanged(Z)V
    .registers 4
    .parameter "isShown"

    .prologue
    .line 219
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    if-eqz p0, :cond_17

    .line 224
    :try_start_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_15

    .line 225
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->startSCO(Z)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    .line 232
    :cond_15
    :goto_15
    monitor-exit v1

    return-void

    .line 230
    :cond_17
    const/4 v0, 0x0

    :try_start_18
    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->stopSCO(Z)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_15

    .line 219
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onHeadsetStateChanged(Z)V
    .registers 6
    .parameter "isConnected"

    .prologue
    .line 241
    const-class v3, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->updateHeadsetStateSetting(Z)V

    .line 242
    if-eqz p0, :cond_39

    .line 245
    invoke-static {}, Lcom/vlingo/client/VlingoApplicationService;->isAppInForeground()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 246
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->startSCO(Z)V

    .line 248
    :cond_12
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 250
    const-string v2, "launch_car_on_bt_connect"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 251
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    .line 252
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    const-class v4, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3b

    .line 258
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #i:Landroid/content/Intent;
    :cond_39
    monitor-exit v3

    return-void

    .line 241
    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized onListenOverBTSettingChanged(Z)V
    .registers 3
    .parameter "isEnabled"

    .prologue
    .line 202
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    if-eqz p0, :cond_b

    .line 204
    const/4 v0, 0x0

    :try_start_6
    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->startSCO(Z)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    .line 210
    :goto_9
    monitor-exit v1

    return-void

    .line 208
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->stopSCO(Z)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_9

    .line 202
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onScoStateChanged(Z)V
    .registers 8
    .parameter "isConnected"

    .prologue
    .line 269
    const-class v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/VlingoApplicationService;->isAppInForeground()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    move-result v1

    if-nez v1, :cond_b

    .line 296
    :cond_9
    :goto_9
    monitor-exit v2

    return-void

    .line 277
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->get(Z)Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 279
    if-eqz p0, :cond_2f

    .line 280
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->cancelScoTimeoutTask()V

    .line 281
    sget-object v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTaskTimeout:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_28

    .line 282
    sget-object v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-static {v1, v3, v4}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 284
    :cond_28
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->cancelScoConnectedTask()V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2c

    goto :goto_9

    .line 269
    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1

    .line 290
    :cond_2f
    :try_start_2f
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isListenOverBTEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAdapterOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const-class v3, Lcom/vlingo/client/VlingoApplicationService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.app.action.CLOSE_APPLICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vlingo/client/VlingoApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_2c

    goto :goto_9
.end method

.method public static declared-synchronized openBtProxy()V
    .registers 5

    .prologue
    .line 105
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_19

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 107
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 110
    :cond_19
    monitor-exit v1

    return-void

    .line 105
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized runTaskOnBluetoothAudioOn(Ljava/lang/Runnable;J)V
    .registers 7
    .parameter "task"
    .parameter "maxWait"

    .prologue
    .line 371
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTask:Ljava/lang/Runnable;

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    sput-wide v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mOnScoConnectedTaskTimeout:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 373
    monitor-exit v1

    return-void

    .line 371
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized startSCO(Z)V
    .registers 6
    .parameter "retryOnFailure"

    .prologue
    .line 309
    const-class v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isListenOverBTEnabled()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2b

    move-result v1

    if-nez v1, :cond_b

    .line 321
    :cond_9
    :goto_9
    monitor-exit v2

    return-void

    .line 315
    :cond_b
    :try_start_b
    new-instance v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$StartScoThread;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$StartScoThread;-><init>(Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$1;)V

    invoke-virtual {v1}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$StartScoThread;->start()V

    .line 316
    sget-object v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    if-nez v1, :cond_9

    .line 317
    invoke-static {}, Lcom/vlingo/client/core/util/TimerSingleton;->getTimer()Ljava/util/Timer;

    move-result-object v0

    .line 318
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$ScoTimeoutTask;

    invoke-direct {v1, p0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$ScoTimeoutTask;-><init>(Z)V

    sput-object v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    .line 319
    sget-object v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mScoTimeoutTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_9

    .line 309
    .end local v0           #timer:Ljava/util/Timer;
    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized stopSCO(Z)V
    .registers 4
    .parameter "ignoreListenOverBTSetting"

    .prologue
    .line 331
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isListenOverBTEnabled()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    move-result v0

    if-nez v0, :cond_d

    if-nez p0, :cond_d

    .line 341
    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    .line 337
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->cancelScoTimeoutTask()V

    .line 338
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_b

    .line 339
    sget-object v0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    sget-object v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1c

    goto :goto_b

    .line 331
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateHeadsetStateSetting(Z)V
    .registers 3
    .parameter "isConnected"

    .prologue
    .line 166
    const-class v1, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v1

    :try_start_3
    const-string v0, "bluetooth_headset_connected"

    invoke-static {v0, p0}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 167
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->isBackgroundProcess()Z

    move-result v0

    if-nez v0, :cond_15

    .line 168
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setBluetoothConnected(Z)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 170
    :cond_15
    monitor-exit v1

    return-void

    .line 166
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method
