.class synthetic Lcom/google/android/videochat/CallAudioHelper$4;
.super Ljava/lang/Object;
.source "CallAudioHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallAudioHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

.field static final synthetic $SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 491
    invoke-static {}, Lcom/google/android/videochat/CallSession$AudioDevice;->values()[Lcom/google/android/videochat/CallSession$AudioDevice;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

    :try_start_9
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallSession$AudioDevice;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallSession$AudioDevice;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_5d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallSession$AudioDevice;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5b

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallSession$AudioDevice;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_59

    .line 426
    :goto_35
    invoke-static {}, Lcom/google/android/videochat/CallState$AudioDeviceState;->values()[Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    .line 491
    :catch_59
    move-exception v0

    goto :goto_35

    :catch_5b
    move-exception v0

    goto :goto_2a

    :catch_5d
    move-exception v0

    goto :goto_1f

    :catch_5f
    move-exception v0

    goto :goto_14
.end method
