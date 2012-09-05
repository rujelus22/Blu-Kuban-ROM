.class synthetic Lcom/google/android/talk/fragments/ChatScreenFragment$18;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
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
    .line 2251
    invoke-static {}, Lcom/google/android/videochat/CallState$AudioDeviceState;->values()[Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    :try_start_9
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_cd

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_ca

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c7

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->EARPIECE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_c4

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_c1

    .line 2210
    :goto_40
    invoke-static {}, Lcom/google/android/talk/ChatView$VideoChatState;->values()[Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    :try_start_49
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_bf

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_bd

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_bb

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_b9

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_b7

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_b5

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_b3

    :goto_96
    :try_start_96
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a2} :catch_b1

    :goto_a2
    :try_start_a2
    sget-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ae} :catch_af

    :goto_ae
    return-void

    :catch_af
    move-exception v0

    goto :goto_ae

    :catch_b1
    move-exception v0

    goto :goto_a2

    :catch_b3
    move-exception v0

    goto :goto_96

    :catch_b5
    move-exception v0

    goto :goto_8b

    :catch_b7
    move-exception v0

    goto :goto_80

    :catch_b9
    move-exception v0

    goto :goto_75

    :catch_bb
    move-exception v0

    goto :goto_6a

    :catch_bd
    move-exception v0

    goto :goto_5f

    :catch_bf
    move-exception v0

    goto :goto_54

    .line 2251
    :catch_c1
    move-exception v0

    goto/16 :goto_40

    :catch_c4
    move-exception v0

    goto/16 :goto_35

    :catch_c7
    move-exception v0

    goto/16 :goto_2a

    :catch_ca
    move-exception v0

    goto/16 :goto_1f

    :catch_cd
    move-exception v0

    goto/16 :goto_14
.end method
