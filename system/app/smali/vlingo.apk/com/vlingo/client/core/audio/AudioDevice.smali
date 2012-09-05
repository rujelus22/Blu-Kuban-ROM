.class public abstract Lcom/vlingo/client/core/audio/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# static fields
.field public static final BT_AMR_PADDING_MILLIS:I = 0x4b0


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstanceShared()Lcom/vlingo/client/core/audio/AudioDevice;
    .registers 2

    .prologue
    .line 26
    const-class v1, Lcom/vlingo/client/core/audio/AudioDevice;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/core/common/SharedInstanceManager;->getInstance()Lcom/vlingo/client/core/common/SharedInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/common/SharedInstanceManager;->audioDeviceSharedInstance_get()Lcom/vlingo/client/core/audio/AudioDevice;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract getAudioDeviceName()Ljava/lang/String;
.end method

.method public abstract isAudioBluetooth()Z
.end method

.method public abstract isAudioHeadset()Z
.end method

.method public padAudioWithSilenceIfBT([BII)[B
    .registers 5
    .parameter "audio"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/vlingo/client/core/audio/AudioDevice;->isAudioBluetooth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    const/16 v0, 0x4b0

    invoke-static {p1, p2, p3, v0}, Lcom/vlingo/client/core/audio/AMRUtil;->addPaddingToAMR([BIII)[B

    move-result-object p1

    .line 57
    .end local p1
    :cond_c
    return-object p1
.end method

.method public abstract setAudioPath(Ljavax/microedition/media/Player;I)Z
.end method

.method public abstract setBestAudioPath(Ljavax/microedition/media/Player;)I
.end method

.method public abstract setBestAudioPath(Ljavax/microedition/media/Player;Z)I
.end method

.method public abstract setCurrentAudioPath(Ljavax/microedition/media/Player;)Z
.end method

.method public abstract startBackgroundHeadsetNameCheck()V
.end method
