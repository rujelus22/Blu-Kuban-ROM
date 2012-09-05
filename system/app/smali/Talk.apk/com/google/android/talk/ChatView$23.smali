.class synthetic Lcom/google/android/talk/ChatView$23;
.super Ljava/lang/Object;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

.field static final synthetic $SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3139
    invoke-static {}, Lcom/google/android/videochat/CallState$AudioDeviceState;->values()[Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    :try_start_9
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_b1

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_ae

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_ab

    .line 3090
    :goto_2a
    invoke-static {}, Lcom/google/android/talk/ChatView$VideoChatState;->values()[Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    :try_start_33
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_a9

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_a7

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_a5

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_a3

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_a1

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_9f

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_9d

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_9b

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    :goto_98
    return-void

    :catch_99
    move-exception v0

    goto :goto_98

    :catch_9b
    move-exception v0

    goto :goto_8c

    :catch_9d
    move-exception v0

    goto :goto_80

    :catch_9f
    move-exception v0

    goto :goto_75

    :catch_a1
    move-exception v0

    goto :goto_6a

    :catch_a3
    move-exception v0

    goto :goto_5f

    :catch_a5
    move-exception v0

    goto :goto_54

    :catch_a7
    move-exception v0

    goto :goto_49

    :catch_a9
    move-exception v0

    goto :goto_3e

    .line 3139
    :catch_ab
    move-exception v0

    goto/16 :goto_2a

    :catch_ae
    move-exception v0

    goto/16 :goto_1f

    :catch_b1
    move-exception v0

    goto/16 :goto_14
.end method
