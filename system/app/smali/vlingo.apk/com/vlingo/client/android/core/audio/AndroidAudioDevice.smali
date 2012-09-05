.class public Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;
.super Lcom/vlingo/client/core/audio/AudioDevice;
.source "AndroidAudioDevice.java"


# static fields
.field private static final DEFAULT_AUDIO_DEVICE_NAME:Ljava/lang/String; = "Android"

.field private static final DEFAULT_BLUETOOTH_DEVICE_NAME:Ljava/lang/String; = "Unknown"

.field private static s_AudioDevice:Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;


# instance fields
.field private volatile currentBluetoothHeadsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->s_AudioDevice:Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vlingo/client/core/audio/AudioDevice;-><init>()V

    .line 20
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->currentBluetoothHeadsetName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;
    .registers 2

    .prologue
    .line 25
    const-class v1, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->s_AudioDevice:Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;

    if-nez v0, :cond_e

    .line 26
    new-instance v0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;-><init>()V

    sput-object v0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->s_AudioDevice:Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;

    .line 27
    :cond_e
    sget-object v0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->s_AudioDevice:Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAudioDeviceName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->isAudioBluetooth()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/BT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->currentBluetoothHeadsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_1b
    return-object v0

    :cond_1c
    const-string v0, "Android"

    goto :goto_1b
.end method

.method public isAudioBluetooth()Z
    .registers 2

    .prologue
    .line 41
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v0

    return v0
.end method

.method public isAudioHeadset()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public resetCurrentBluetoothDeviceName()V
    .registers 2

    .prologue
    .line 84
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->currentBluetoothHeadsetName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAudioPath(Ljavax/microedition/media/Player;I)Z
    .registers 4
    .parameter "player"
    .parameter "audioPath"

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public setBestAudioPath(Ljavax/microedition/media/Player;)I
    .registers 3
    .parameter "player"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setBestAudioPath(Ljavax/microedition/media/Player;Z)I
    .registers 4
    .parameter "player"
    .parameter "keepPath"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentAudioPath(Ljavax/microedition/media/Player;)Z
    .registers 3
    .parameter "player"

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentBluetoothDeviceName(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .parameter "bd"

    .prologue
    .line 75
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 76
    :cond_c
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->resetCurrentBluetoothDeviceName()V

    .line 81
    :goto_f
    return-void

    .line 78
    :cond_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, name:Ljava/lang/String;
    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->currentBluetoothHeadsetName:Ljava/lang/String;

    goto :goto_f
.end method

.method public startBackgroundHeadsetNameCheck()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method
