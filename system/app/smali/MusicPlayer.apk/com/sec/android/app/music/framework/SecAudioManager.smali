.class public Lcom/sec/android/app/music/framework/SecAudioManager;
.super Ljava/lang/Object;
.source "SecAudioManager.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static sAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_11

    .line 119
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    .line 121
    :cond_11
    return-void
.end method

.method public static getEarProtectLimitIndex()I
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v0

    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 3
    .parameter "l"

    .prologue
    .line 140
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    return v0
.end method

.method public adjustStreamVolume(III)V
    .registers 5
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 156
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 157
    return-void
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "keys"

    .prologue
    .line 152
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 164
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 168
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public isAudioPathBT()Z
    .registers 4

    .prologue
    .line 58
    sget-object v1, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    const-string v2, "audioParam;outDevice"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x380

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public isAudioPathEarjack()Z
    .registers 4

    .prologue
    .line 53
    sget-object v1, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    const-string v2, "audioParam;curDevice"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v1, "HPH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isBluetoothA2dpOn()Z
    .registers 2

    .prologue
    .line 148
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isExtraSpeakerDockOn()Z
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    return v0
.end method

.method public isRecordActive()Z
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .registers 2

    .prologue
    .line 144
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "cp"

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 129
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 5
    .parameter "l"
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    .line 136
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpForceOn(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 35
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 36
    return-void
.end method

.method public setStreamVolume(III)V
    .registers 5
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 160
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 161
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "cp"

    .prologue
    .line 132
    sget-object v0, Lcom/sec/android/app/music/framework/SecAudioManager;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 133
    return-void
.end method
